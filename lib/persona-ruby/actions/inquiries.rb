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

      def inquiry_generate_one_time_link(id, expiration_time = 3600)
        connection.post("inquiries/#{id}/generate-one-time-link", {meta: { "expires-in-seconds": expiration_time }})
      end
    end
  end
end
