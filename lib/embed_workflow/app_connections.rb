# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module AppConnections
    class << self
      include Base
      include Client

      RESOURCE_BASE_PATH = "#{BASE_API_PATH}/app_connections".freeze

      def list(user_key: nil, starting_after: nil, ending_before: nil, limit: nil)
        params = {
          user_key: user_key,
          starting_after: starting_after,
          ending_before: ending_before,
          limit: limit
        }.compact

        get_request(
          path: RESOURCE_BASE_PATH,
          params: params
        )
      end

      def fetch(id:, user_key: nil)
        params = { user_key: user_key }.compact

        get_request(
          path: "#{RESOURCE_BASE_PATH}/#{id}",
          params: params
        )
      end

      def create(name:, app_type:, config:, user_key: nil)
        attrs = {
          name: name,
          app_type: app_type,
          config: config,
          user_key: user_key
        }.compact

        post_request(
          path: RESOURCE_BASE_PATH,
          body: attrs
        )
      end

      def update(id:, name: nil, app_type: nil, config: nil, user_key: nil)
        attrs = {
          name: name,
          app_type: app_type,
          config: config,
          user_key: user_key
        }.compact

        put_request(
          path: "#{RESOURCE_BASE_PATH}/#{id}",
          body: attrs
        )
      end

      def delete(id:, user_key: nil)
        params = { user_key: user_key }.compact

        delete_request(
          path: "#{RESOURCE_BASE_PATH}/#{id}",
          params: params
        )
      end
    end
  end
end