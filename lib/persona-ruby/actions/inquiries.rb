# frozen_string_literal: true

module Persona
  module Actions
    module Inquiries
      def inquiry_list(params = {})
        connection.get("inquiries", params)
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

      def inquiry_one_time_link(id, options = {})
        connection.post("inquiries/#{id}/generate-one-time-link", options)
      end
    end
  end
end
