class AlumnosProvider < BaseProvider
  def self.data
    {
      '27855859' => { nombre: 'Miguel CARBONE', documento: '27855859', regularidades: [{ unidad_academica_id: 33, carrera_id: 'AS99', fecha_inicio: Date.new(2000, 01, 01), fecha_fin: Date.new(2008, 1, 1), regular: false }, { unidad_academica_id: 33, carrera_id: 'LI03', fecha_inicio: Date.new(2008, 1, 1), fecha_fin: nil, regular: true }] },
      '31988189' => { nombre: 'José Nahuel CUESTA LUENGO', documento: '31988189', regularidades: [{ unidad_academica_id: 33, carrera_id: 'LI03', fecha_inicio: Date.new(2004, 1, 1), fecha_fin: nil, regular: true }] },
      '98654322' => { nombre: 'Jaimito JAIME', documento: '98654322', regularidades: [] },
    }
  end
end
