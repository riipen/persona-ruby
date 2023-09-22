# frozen_string_literal: true

module Persona
  module Actions
    module Inquiries
      def inquiry_list
        connection.get("inquiries", {})
      end

      def inquiry_get(id)
        connection.get("inquiries/#{id}", {})
      end
    end
  end
end
