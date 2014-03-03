get '/becas/:codigo', provides: :json do
  @beca = BecasProvider.find params[:codigo]
  jbuilder :'becas/show'
end

get '/personas/:documento/becas', provides: :json do
  @documento = params[:documento]
  @becas = BecasAsignadasProvider.find @documento
  jbuilder :'becas/asignadas'
end
