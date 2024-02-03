# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Trigger
    class << self
      include Base
      include Client

      def create(event:, all_workflows: false, workflow_hashids: nil, workflow_keys: nil, user_key: nil, execution_data: nil)
        attrs = {
          event: event,
          all_workflows: all_workflows,
          workflow_hashids: workflow_hashids,
          workflow_keys: workflow_keys,
          user_key: user_key,
          execution_data: execution_data
        }.compact

        post_request(
          auth: true,
          path: "#{BASE_API_PATH}/trigger",
          body: attrs
        )
      end
    end
  end
end
