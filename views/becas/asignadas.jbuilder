json.becas @becas do |beca|
  json.(beca, :codigo, :vigente, :fecha_inicio, :fecha_fin)

  json.links do
    json.beca do
      json.href beca_url(beca.codigo)
    end
  end
end

json.links do
  json.self do
    json.href becas_asignadas_url(@documento)
  end
end
