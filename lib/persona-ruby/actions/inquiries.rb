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

      def inquiry_create(attributes = {})
        connection.post("inquiries", {data: { attributes:}})
      end
    end
  end
end
