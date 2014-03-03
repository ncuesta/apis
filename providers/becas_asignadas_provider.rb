class BecasAsignadasProvider < BaseProvider
  def self.data
    {
      '31988189' => [{ codigo: 'BT01', vigente: true, fecha_inicio: Date.new(2014, 1, 1), fecha_fin: Date.new(2014, 6, 1) }]
    }
  end
end
