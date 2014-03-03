json.(@beca, :codigo, :nombre)

json.links do
  json.self do
    json.href beca_url(@beca)
  end
end
