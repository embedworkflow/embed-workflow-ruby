# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Actions
    class << self
      include Base
      include Client

      RESOURCE_BASE_PATH = "#{BASE_API_PATH}/actions".freeze

      def activities(hashid:)
        get_request(path: "#{RESOURCE_BASE_PATH}/activities")
      end
    end
  end
end
