# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Executions
    class << self
      include Base
      include Client

      RESOURCE_BASE_PATH = "#{BASE_API_PATH}/executions".freeze

      def stop(stop_event:, user_key: nil, filters: nil)
        attrs = {
          stop_event: stop_event,
          user_key: user_key,
          filters: filters
        }

        post_request(
          path: "#{RESOURCE_BASE_PATH}/stop",
          body: attrs
        )
      end
    end
  end
end
