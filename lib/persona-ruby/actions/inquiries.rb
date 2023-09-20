# frozen_string_literal: true

module Persona
  module Actions
    module Inquiries
      def inquiry_list()
        connection.get('', params = {})
      end
    end
  end
end