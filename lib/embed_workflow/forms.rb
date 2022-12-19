# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Forms
    class << self
      include Base
      include Client

      def create(workflow_hashid:, name:, layout: {})
        attrs = { name: name, layout: layout }

        post_request(
          auth: true,
          path: "#{BASE_API_PATH}/forms",
          body: attrs
        )
      end

      def fetch(id:, without_auth: false)
        get_request(
          auth: without_auth ? false : true,
          path: "#{BASE_API_PATH}/forms/#{id}"
        )
      end

      def update(id:, name:)
        attrs = {
          name: name
        }

        put_request(
          auth: true,
          path: "#{BASE_API_PATH}/forms/#{id}",
          body: attrs
        )
      end

      def delete(id:)
        delete_request(
          auth: true,
          path: "#{BASE_API_PATH}/forms/#{id}"
        )
      end

      def submit(id:, submission:)
        attrs = { submission: submission }

        post_request(
          auth: true,
          path: "#{BASE_API_PATH}/forms/#{id}/submissions",
          body: attrs
        )
      end
    end
  end
end
