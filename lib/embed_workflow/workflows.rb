# frozen_string_literal: true

require "net/http"
require "uri"

module EmbedWorkflow
  module Workflows
    class << self
      include Base
      include Client

      def create(name:, template: nil, auto_start: true)
        attrs = {
          name: name,
          template: template,
          auto_start: auto_start
        }

        post_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows",
          body: attrs
        )
      end

      def list
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows"
        )
      end

      def fetch(hashid:)
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{hashid}"
        )
      end

      def update(hashid:, name:)
        attrs = {
          name: name
        }

        put_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{hashid}",
          body: attrs
        )
      end

      def execute(hashid:, form: {}, execution: {})
        attrs = {
          form: form,
          execution: execution,
        }

        post_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{hashid}/execute",
          body: attrs
        )
      end

      def clone(hashid:)
        post_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{hashid}/clone"
        )
      end

      def run(hashid:)
        post_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{hashid}/run"
        )
      end

      def activities(hashid:)
        get_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{hashid}/activities"
        )
      end

      def delete(hashid:)
        delete_request(
          auth: true,
          path: "#{BASE_API_PATH}/workflows/#{hashid}"
        )
      end
    end
  end
end
