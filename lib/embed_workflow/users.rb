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
    end
  end
end
