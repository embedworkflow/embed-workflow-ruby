# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Actions
    class << self
      include Base
      include Client

      def activities(hashid:)
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/#{hashid}/activities"
        )
      end
    end
  end
end
