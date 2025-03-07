# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Users
    class << self
      include Base
      include Client

      RESOURCE_BASE_PATH = "#{BASE_API_PATH}/users".freeze

      def upsert(key:, name: nil, email: nil, config: nil)
        attrs = {
          key: key,
          name: name,
          email: email,
          config: config
        }.compact

        put_request(
          path: "#{RESOURCE_BASE_PATH}/#{key}",
          body: attrs
        )
      end

      def fetch(key:)
        get_request(path: "#{RESOURCE_BASE_PATH}/#{key}")
      end

      def list(starting_after: nil, ending_before: nil, limit: nil)
        params = {
          starting_after: starting_after,
          ending_before: ending_before,
          limit: limit
        }.compact

        get_request(
          path: RESOURCE_BASE_PATH,
          params: params
        )
      end

      def delete(key:)
        delete_request(path: "#{RESOURCE_BASE_PATH}/#{key}")
      end
    end
  end
end
