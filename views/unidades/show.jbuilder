json.(@unidad, :codigo, :nombre)

json.links do
  json.self do
    json.href unidad_academica_url(@unidad)
  end

  json.carreras do
    json.href carreras_url(@unidad)
  end
end