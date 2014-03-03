class BecasProvider < BaseProvider
  def self.data
    {
      'BT01' => { codigo: 'BT01', nombre: 'Beca de transporte' },
      'BA01' => { codigo: 'BA01', nombre: 'Beca de apuntes y fotocopias' },
    }
  end
end
