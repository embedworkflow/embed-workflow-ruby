# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Users
    class << self
      include Base
      include Client

      def upsert(key:, name: nil, email: nil, config: nil)
        attrs = {
          key: key,
          name: name,
          email: email,
          config: config
        }.compact

        put_request(
          auth: true,
          path: "#{BASE_API_PATH}/users/#{key}",
          body: attrs
        )
      end

      def fetch(key:)
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/users/#{key}"
        )
      end
    end
  end
end
