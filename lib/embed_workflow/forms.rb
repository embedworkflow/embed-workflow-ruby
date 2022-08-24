# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Forms
    class << self
      include Base
      include Client

      def submit(id:, submission:)
        attrs = { submission: submission }

        request = post_request(
          auth: true,
          path: "/api/forms/#{id}/submissions",
          body: attrs
        )

        execute_request(request: request)
      end

      def fetch(id:, without_auth: false)
        request = get_request(
          auth: without_auth ? false : true,
          path: "/api/forms/#{id}"
        )

        execute_request(request: request)
      end

      def update(id:, name:)
        attrs = {
          name: name
        }

        request = put_request(
          auth: true,
          path: "/api/forms/#{id}",
          body: attrs
        )

        execute_request(request: request)
      end

      def delete(id:)
        request = delete_request(
          auth: true,
          path: "/api/forms/#{id}"
        )

        execute_request(request: request)
      end
    end
  end
end
