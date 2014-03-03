json.(@alumno, :documento, :nombre)

json.links do
  json.self do
    json.href alumno_url(@alumno)
  end

  json.regularidades do
    json.href regularidades_alumno_url(@alumno)
  end
end