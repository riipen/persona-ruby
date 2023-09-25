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

      def inquiry_update(id, attributes = {})
        connection.patch("inquiries/#{id}", {data: {attributes:}})
      end

      def inquiry_delete(id)
        connection.delete("inquiries/#{id}", {})
      end
    end
  end
end
