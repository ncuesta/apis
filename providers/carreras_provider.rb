class CarrerasProvider < BaseProvider
  def self.data
    {
      'AS99' => { codigo: 'AS99', nombre: 'Analista en Sistemas - Plan 99', unidad_academica_id: 33 },
      'LI03' => { codigo: 'LI03', nombre: 'Licenciatura en Informática - Plan 2003', unidad_academica_id: 33 },
      'LI07' => { codigo: 'LI07', nombre: 'Licenciatura en Informática - Plan 2007', unidad_academica_id: 33 },
    }
  end
end