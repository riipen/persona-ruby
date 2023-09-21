# frozen_string_literal: true

module Persona
  class Client
    include Persona::Actions::Inquiries
    attr_reader :url

    BASE_URL = "https://withpersona.com/api/v1"

    def initialize(access_token:)
      @access_token = "Bearer #{access_token}"
      @url = BASE_URL
    end

    def connection
      Connection.new(@url, @access_token)
    end
  end
end
