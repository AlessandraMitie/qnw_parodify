require "capybara"
require "capybara/cucumber"

#Importar arquivo com o módulo que tem o método para apagar usuário
require_relative "helpers"

World(Helpers)
#World é um objeto do Ruby que carrega o módulo (no caso Helpers), fazendo com que todos os métodos dentro do módulo se tornem execuções nativas

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end