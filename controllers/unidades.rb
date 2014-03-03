get '/unidades/:codigo', provides: :json do
  @unidad = UnidadesAcademicasProvider.find params[:codigo]
  halt 404 if @unidad.nil?

  jbuilder :'unidades/show'
end

get '/unidades/:codigo/carreras', provides: :json do
  @unidad = UnidadesAcademicasProvider.find params[:codigo]
  halt 404 if @unidad.nil?
  @carreras = CarrerasProvider.find_by unidad_academica_id: @unidad.codigo

  jbuilder :'unidades/carreras'
end
