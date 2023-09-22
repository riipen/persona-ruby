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

      def inquiry_create(account_id, inquiry_template_id)
        connection.post("inquiries", { data: { attributes: { "account-id": account_id, "inquiry-template-id": inquiry_template_id } } })
      end
    end
  end
end
