# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module CatchHook
    class << self
      include Base
      include Client

      RESOURCE_BASE_PATH = "#{BASE_API_PATH}/hooks".freeze

      def create(hook_id:, user_key:, **rest)
        attrs = { user_key: user_key }.merge(rest).compact

        post_request(
          path: "#{RESOURCE_BASE_PATH}/#{hook_id}/catch",
          body: attrs
        )
      end
    end
  end
end
