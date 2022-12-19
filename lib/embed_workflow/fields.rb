# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Fields
    class << self
      include Base
      include Client

      def create(workflow_hashid:, fields:)
        post_request(
          auth: true,
          path: "#{BASE_API_PATH}/#{workflow_hashid}/fields/",
          body: { fields: fields }
        )
      end

      def fetch(workflow_hashid:)
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/#{workflow_hashid}/fields"
        )
      end

      def upsert(workflow_hashid:, id: nil, name: nil, type: nil, required: nil, data: nil)
        attrs = {
          id: id,
          name: name,
          type: type,
          required: required,
          data: data
        }.compact

        put_request(
          auth: true,
          path: "#{BASE_API_PATH}/#{workflow_hashid}/fields/",
          body: attrs
        )
      end

      def delete(workflow_hashid:, field_key: nil)
        attrs = { field_key: field_key }

        delete_request(
          auth: true,
          path: "#{BASE_API_PATH}/#{workflow_hashid}/fields",
          params: attrs
        )
      end

      def list(workflow_hashid:, starting_after: nil, ending_before: nil)
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{workflow_hashid}/forms",
          params: { starting_after: starting_after, ending_before: ending_before }.compact
        )
      end
    end
  end
end
