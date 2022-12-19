# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Tenants
    class << self
      include Base
      include Client

      def upsert(key:, config: nil, email_integration_key: nil, sms_integration_key: nil)
        attrs = {
          key: key,
          config: config,
          email_integration_key: email_integration_key,
          sms_integration_key: sms_integration_key
        }.compact

        put_request(
          auth: true,
          path: "#{BASE_API_PATH}/tenants/#{key}",
          body: attrs
        )
      end

      def fetch(key:)
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/tenants/#{key}"
        )
      end

      def delete(key:)
        delete_request(
          auth: true,
          path: "#{BASE_API_PATH}/tenants/#{key}"
        )
      end

      def list(starting_after: nil, ending_before: nil)
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/tenants",
          params: { starting_after: starting_after, ending_before: ending_before }.compact
        )
      end
    end
  end
end
