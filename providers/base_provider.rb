class BaseProvider
  def self.find(id)
    values = data[id]
    unless data[id].nil?
      begin
        values = Hashie::Mash.new(values)
      rescue NoMethodError
        values = values.map { |v| Hashie::Mash.new(v) }
      end
    end
  end

  def self.find_by(criteria)
    data.select do |key, datum|
      criteria.inject(true) { |_, (field, value)| _ && datum[field] == value }
    end.map { |k, v| Hashie::Mash.new v }
  end
end
