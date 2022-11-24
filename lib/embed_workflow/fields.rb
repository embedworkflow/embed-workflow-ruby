# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Fields
    class << self
      include Base
      include Client

      def list(hashid:)
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/#{hashid}/fields"
        )
      end

      def create(hashid:, fields:)
        post_request(
          auth: true,
          path: "#{BASE_API_PATH}/#{hashid}/fields/",
          body: { workflow: { fields: fields } }
        )
      end

      def update(hashid:, id:, name:, type:, required: false, data: {})
        attrs = {
          id: id,
          name: name,
          type: type,
          required: required,
          data: data
        }

        put_request(
          auth: true,
          path: "#{BASE_API_PATH}/#{hashid}/fields/",
          body: { field: attrs }
        )
      end

      def delete(hashid:, field_key: nil)
        attrs = { field_key: field_key }

        delete_request(
          auth: true,
          path: "#{BASE_API_PATH}/#{hashid}/fields",
          params: attrs
        )
      end
    end
  end
end
