# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Workflows
    class << self
      include Base
      include Client

      def create(name:, template: nil, context: nil, auto_start: nil, tenant_key: nil)
        attrs = {
          name: name,
          template: template,
          auto_start: auto_start,
          tenant_key: tenant_key,
          context: context
        }

        post_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows",
          body: attrs
        )
      end

      def fetch(hashid: nil, key: nil)
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{hashid}"
        )
      end

      def update(hashid:, name: nil, template: nil, tenant_key: nil, context: nil, auto_start: nil)
        attrs = {
          name: name,
          template: template,
          tenant_key: tenant_key,
          context: context
        }.compact

        put_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{hashid}",
          body: attrs
        )
      end

      def list(user_key: nil, starting_after: nil, ending_before: nil)
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows",
          params: { user_key: user_key, starting_after: starting_after, ending_before: ending_before }.compact
        )
      end

      def execute(hashid:, form_data: {}, execution_data: {})
        attrs = {
          form_data: form_data,
          execution_data: execution_data,
        }

        post_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{hashid}/execute",
          body: attrs
        )
      end

      def clone(hashid:)
        post_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{hashid}/clone"
        )
      end

      def run(hashid:)
        post_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{hashid}/run"
        )
      end

      def activities(hashid:)
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{hashid}/activities"
        )
      end

      def delete(hashid:)
        delete_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{hashid}"
        )
      end
    end
  end
end
