# frozen_string_literal: true

module Persona
    class Client
        BASE_URL = "https://withpersona.com/api/v1/inquiries"

        def initialize(access_token:)
            @access_token = 'Bearer ' + access_token
            @url = BASE_URL
        end
        
    end
end 
