# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Integrations
    class << self
      include Base
      include Client

      def upsert(key:, status: nil, integration_type: nil, integration_data: nil)
        attrs = {
          status: status,
          integration_type: integration_type,
          integration_data: integration_data_params(integration_data)
        }

        put_request(
          auth: true,
          path: "#{BASE_API_PATH}/integrations/#{key}",
          body: attrs
        )
      end

      def fetch(key:)
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/integrations/#{key}"
        )
      end

      def delete(key:)
        delete_request(
          auth: true,
          path: "#{BASE_API_PATH}/integrations/#{key}"
        )
      end

      def list(starting_after: nil, ending_before: nil)
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/integrations",
          params: { starting_after: starting_after, ending_before: ending_before }.compact
        )
      end

      private

        def integration_data_params(params = {})
          params.slice(
            :api_key,
            :auth_token,
            :domain,
            :user_name,
            :password,
            :account_sid,
            :host_name
          )
        end
    end
  end
end
