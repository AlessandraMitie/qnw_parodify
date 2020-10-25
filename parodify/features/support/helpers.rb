require "httparty"

module Helpers

    #Método def para apagar usuário
    def delorean(email)
        #email é o argumento
        HTTParty.get("http://parodify.qaninja.com.br/helpers?email=#{email}")
    end

end