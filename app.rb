configure :development do
  require 'sinatra/reloader'
  require 'better_errors'
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

require_relative 'controllers/alumnos'
require_relative 'controllers/anses'
require_relative 'controllers/becas'
require_relative 'controllers/unidades'

require_relative 'helpers/routes'

# Autoloading
root = settings.root

autoload :BaseProvider,               root + '/providers/base_provider.rb'
autoload :AlumnosProvider,            root + '/providers/alumnos_provider.rb'
autoload :AnsesProvider,              root + '/providers/anses_provider.rb'
autoload :BecasProvider,              root + '/providers/becas_provider.rb'
autoload :CarrerasProvider,           root + '/providers/carreras_provider.rb'
autoload :UnidadesAcademicasProvider, root + '/providers/unidades_academicas_provider.rb'
