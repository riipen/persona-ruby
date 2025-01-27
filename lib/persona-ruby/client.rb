# frozen_string_literal: true

module Persona
  class Client
    include Persona::Actions::Inquiries
    attr_reader :url

    BASE_URL = "https://withpersona.com/api/v1"

    def initialize(access_token:, timeout: 60)
      @access_token = "Bearer #{access_token}"
      @timeout      = timeout
      @url          = BASE_URL
    end

    def connection
      Connection.new(@url, @access_token, timeout: @timeout)
    end
  end
end
