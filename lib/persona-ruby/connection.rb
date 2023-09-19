require 'faraday'

module Persona
  class Connection
    def initialize(url, auth_token)
      @connection = Faraday.new(url: url) do |builder|
        builder.request :json
        builder.headers[:accept] = 'application/json'
        builder.response :json
        builder.request :authorization, auth_token, ''
      end
    end

    def delete(id, params = {})
      request(:delete, id, params)
    end

    def get(id, params = {})
      request(:get, id, params)
    end

    def post(id, params = {})
      request(:post, id, params)
    end

    def request(method, id, params = {})
      response = @connection.send(method, id, params)

      error = Error.from_response(response)

      raise error if error

      response.body
    end
  end
end