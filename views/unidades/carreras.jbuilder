json.carreras @carreras do |carrera|
  json.(carrera, :codigo, :nombre)

  json.links do
    json.self do
      json.href carrera_url(@unidad, carrera)
    end
  end
end

json.links do
  json.self do
    json.href carreras_url(@unidad)
  end

  json.unidad_academica do
    json.href unidad_academica_url(@unidad)
  end
end
