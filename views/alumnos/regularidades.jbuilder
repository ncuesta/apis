json.(@alumno, :documento)

json.regularidades @alumno.regularidades do |regularidad|
  json.(regularidad, :unidad_academica_id, :carrera_id, :fecha_inicio, :fecha_fin, :regular)

  json.links do
    json.unidad_academica do
      json.href unidad_academica_url(regularidad.unidad_academica_id)
    end

    json.carrera do
      json.href carrera_url(regularidad.unidad_academica_id, regularidad.carrera_id)
    end
  end
end

json.links do
  json.self do
    json.href regularidades_alumno_url(@alumno)
  end

  json.alumno do
    json.href alumno_url(@alumno)
  end
end