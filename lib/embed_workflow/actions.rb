# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Actions
    class << self
      include Base
      include Client

      def activities(hashid:)
        request = get_request(
          auth: true,
          path: "#{BASE_API_URL}/#{hashid}/activities"
        )

        execute_request(request: request)
      end
    end
  end
end
