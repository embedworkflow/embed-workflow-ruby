# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Workflows
    class << self
      include Base
      include Client

      def create(name:, template: nil, auto_start: true)
        attrs = {
          name: name,
          template: template,
          auto_start: auto_start
        }

        request = post_request(
          auth: true,
          path: "#{BASE_API_URL}/workflows",
          body: attrs
        )

        execute_request(request: request)
      end

      def list
        request = get_request(
          auth: true,
          path: "#{BASE_API_URL}/workflows"
        )

        execute_request(request: request)
      end

      def fetch(hashid:)
        request = get_request(
          auth: true,
          path: "#{BASE_API_URL}/workflows/#{hashid}"
        )

        execute_request(request: request)
      end

      def update(hashid:, name:)
        attrs = {
          name: name
        }

        request = put_request(
          auth: true,
          path: "#{BASE_API_URL}/workflows/#{hashid}",
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
          path: "#{BASE_API_URL}/workflows/#{hashid}/execute",
          body: attrs
        )

        execute_request(request: request)
      end

      def clone(hashid:)
        request = post_request(
          auth: true,
          path: "#{BASE_API_URL}/workflows/#{hashid}/clone"
        )

        execute_request(request: request)
      end

      def run(hashid:)
        request = post_request(
          auth: true,
          path: "#{BASE_API_URL}/workflows/#{hashid}/run"
        )

        execute_request(request: request)
      end

      def activities(hashid:)
        request = get_request(
          auth: true,
          path: "#{BASE_API_URL}/workflows/#{hashid}/activities"
        )

        execute_request(request: request)
      end

      def delete(hashid:)
        request = delete_request(
          auth: true,
          path: "#{BASE_API_URL}/workflows/#{hashid}"
        )

        execute_request(request: request)
      end
    end
  end
end
