# frozen_string_literal: true

module EmbedWorkflow
  class BaseError < StandardError
    attr_reader :http_status, :request_id

    def initialize(http_status: nil, request_id: nil)
      super
      @http_status       = http_status
      @request_id        = request_id
    end
  end

  class APIError < BaseError; end
  class AuthenticationError < BaseError; end
  class InvalidRequestError < BaseError; end
end
