# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Workflows
    class << self
      include Base
      include Client

      def create(name:, auto_start: true)
        attrs = {
          name: name,
          auto_start: auto_start
        }

        request = post_request(
          auth: true,
          path: "/api/workflows",
          body: attrs
        )

        execute_request(request: request)
      end

      def list
        request = get_request(
          auth: true,
          path: "/api/workflows"
        )

        execute_request(request: request)
      end

      def fetch(hashid:)
        request = get_request(
          auth: true,
          path: "/api/workflows/#{hashid}"
        )

        execute_request(request: request)
      end

      def update(hashid:, name:)
        attrs = {
          name: name
        }

        request = put_request(
          auth: true,
          path: "/api/workflows/#{hashid}",
          body: attrs
        )

        execute_request(request: request)
      end

      def execute(hashid:, form: {}, execution: {})
        attrs = {
          form: form,
          execution: execution,
        }

        request = post_request(
          auth: true,
          path: "/api/workflows/#{hashid}/execute",
          body: attrs
        )

        execute_request(request: request)
      end

      def clone(hashid:)
        request = post_request(
          auth: true,
          path: "/api/workflows/#{hashid}/clone"
        )

        execute_request(request: request)
      end

      def run(hashid:)
        request = post_request(
          auth: true,
          path: "/api/workflows/#{hashid}/run"
        )

        execute_request(request: request)
      end

      def activities(hashid:)
        request = get_request(
          auth: true,
          path: "/api/workflows/#{hashid}/activities"
        )

        execute_request(request: request)
      end

      def upsert_field(hashid:, id:, name:, type:, required: false, data: {})
        attrs = {
          id: id,
          name: name,
          type: type,
          required: required,
          data: data
        }

        request = put_request(
          auth: true,
          path: "/api/workflows/#{hashid}/fields/",
          body: { field: attrs }
        )

        execute_request(request: request)
      end

      def remove_field(hashid:, field_key: nil)
        attrs = { field_key: field_key }

        request = delete_request(
          auth: true,
          path: "/api/workflows/#{hashid}/fields",
          params: attrs
        )

        execute_request(request: request)
      end

      def set_fields(hashid:, fields:)
        request = post_request(
          auth: true,
          path: "/api/workflows/#{hashid}/fields/",
          body: { workflow: { fields: fields } }
        )

        execute_request(request: request)
      end
    end
  end
end
