class BaseProvider
  def self.find(id)
    Hashie::Mash.new data[id] unless data[id].nil?
  end

  def self.find_by(criteria)
    data.select do |key, datum|
      criteria.inject(true) { |_, (field, value)| _ && datum[field] == value }
    end
  end
end