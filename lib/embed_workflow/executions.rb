# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Workflows
    class << self
      include Base
      include Client

      def stop(stop_event:, user_key: nil, filters: nil)
        attrs = {
          stop_event: stop_event,
          user_key: user_key,
          filters: filters
        }

        post_request(
          auth: true,
          path: "#{BASE_API_PATH}/executions",
          body: attrs
        )
      end
    end
  end
end
