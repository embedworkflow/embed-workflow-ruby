# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Fields
    class << self
      include Base
      include Client

      def list(hashid:)
        request = get_request(
          auth: true,
          path: "#{BASE_API_URL}/#{hashid}/fields"
        )

        execute_request(request: request)
      end

      def create(hashid:, fields:)
        request = post_request(
          auth: true,
          path: "#{BASE_API_URL}/#{hashid}/fields/",
          body: { workflow: { fields: fields } }
        )

        execute_request(request: request)
      end

      def update(hashid:, id:, name:, type:, required: false, data: {})
        attrs = {
          id: id,
          name: name,
          type: type,
          required: required,
          data: data
        }

        request = put_request(
          auth: true,
          path: "#{BASE_API_URL}/#{hashid}/fields/",
          body: { field: attrs }
        )

        execute_request(request: request)
      end

      def delete(hashid:, field_key: nil)
        attrs = { field_key: field_key }

        request = delete_request(
          auth: true,
          path: "#{BASE_API_URL}/#{hashid}/fields",
          params: attrs
        )

        execute_request(request: request)
      end
    end
  end
end
