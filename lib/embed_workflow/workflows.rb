# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Workflows
    class << self
      include Base
      include Client

      RESOURCE_BASE_PATH = "#{BASE_API_PATH}/workflows"

      def create(name:, template: nil, context: nil, auto_start: nil, tenant_key: nil)
        attrs = {
          name: name,
          template: template,
          auto_start: auto_start,
          tenant_key: tenant_key,
          context: context
        }

        post_request(
          path: RESOURCE_BASE_PATH,
          body: attrs
        )
      end

      def fetch(hashid: nil, key: nil)
        get_request(
          path: "#{RESOURCE_BASE_PATH}/#{hashid}"
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
          path: "#{RESOURCE_BASE_PATH}/#{hashid}",
          body: attrs
        )
      end

      def list(user_key: nil, starting_after: nil, ending_before: nil)
        get_request(
          path: RESOURCE_BASE_PATH,
          params: { user_key: user_key, starting_after: starting_after, ending_before: ending_before }.compact
        )
      end

      def execute(hashid: nil, key: nil, user_key: nil, execution_data: {})
        raise ArgumentError, "Hashid or Key is required" if hashid.nil? && key.nil?

        attrs = {
          user_key: user_key,
          id_type: hashid.nil? ? "key" : "hashid",
          execution_data: execution_data,
        }.compact

        post_request(
          path: "#{RESOURCE_BASE_PATH}/#{hashid || key}/execute",
          body: attrs
        )
      end

      def clone(hashid:, user_key: nil)
        attrs = { user_key: user_key }.compact

        post_request(
          path: "#{RESOURCE_BASE_PATH}/#{hashid}/clone",
          body: attrs
        )
      end

      def activities(hashid:)
        get_request(
          path: "#{RESOURCE_BASE_PATH}/#{hashid}/activities"
        )
      end

      def delete(hashid: nil, key: nil, user_key: nil)
        raise ArgumentError, "Hashid or Key is required" if hashid.nil? && key.nil?

        attrs = {
          user_key: user_key,
          id_type: hashid.nil? ? "key" : "hashid"
        }.compact

        delete_request(
          path: "#{RESOURCE_BASE_PATH}/#{hashid || key}",
          params: attrs
        )
      end
    end
  end
end
