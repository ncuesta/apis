get '/alumnos/:documento', provides: :json do
  @alumno = AlumnosProvider.find params[:documento]
  halt 404 if @alumno.nil?
  jbuilder :'alumnos/show'
end

get '/alumnos/:documento/regularidades', provides: :json do
  @alumno = AlumnosProvider.find params[:documento]
  halt 404 if @alumno.nil?
  jbuilder :'alumnos/regularidades'
end
