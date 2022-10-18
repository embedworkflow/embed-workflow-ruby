# frozen_string_literal: true

module EmbedWorkflow
  # A Net::HTTP based API client for interacting with the EmbedWorkflow API
  module Client
    include Kernel
    BASE_API_URL = "/api/v1".freeze

    def client
      return @client if defined?(@client)
      @client         = create_connection(URI.parse("http://localhost:5000/"))
      # @client.use_ssl = true

      @client
    end

    def execute_request(request:)
      response = client.request(request)

      http_status = response.code.to_i
      handle_error_response(response: response) if http_status >= 400

      JSON.parse(response.body) if response.body && (response.body != "")
    end

    def get_request(path:, auth: false, params: {}, access_token: nil)
      uri       = URI(path)
      uri.query = URI.encode_www_form(params) if params

      request = Net::HTTP::Get.new(
        uri.to_s,
        "Content-Type" => "application/json"
      )

      request["Authorization"] = "Bearer #{access_token || EmbedWorkflow.pkey!}" if auth
      request["X-Embed-Workflow-SK"] = EmbedWorkflow.skey! if auth
      request["User-Agent"]    = user_agent
      request
    end

    def post_request(path:, auth: false, _idempotency_key: nil, body: nil)
      request                  = Net::HTTP::Post.new(path, "Content-Type" => "application/json")
      request.body             = body.to_json if body
      request["Authorization"] = "Bearer #{EmbedWorkflow.pkey!}" if auth
      request["X-Embed-Workflow-SK"] = EmbedWorkflow.skey! if auth
      request["User-Agent"]    = user_agent
      request
    end

    def delete_request(path:, auth: false, params: {})
      uri       = URI(path)
      uri.query = URI.encode_www_form(params) if params

      request = Net::HTTP::Delete.new(
        uri.to_s,
        "Content-Type" => "application/json"
      )

      request["Authorization"] = "Bearer #{EmbedWorkflow.pkey!}" if auth
      request["X-Embed-Workflow-SK"] = EmbedWorkflow.skey! if auth
      request["User-Agent"]    = user_agent
      request
    end

    def put_request(path:, auth: false, _idempotency_key: nil, body: nil)
      request                  = Net::HTTP::Put.new(path, "Content-Type" => "application/json")
      request.body             = body.to_json if body
      request["Authorization"] = "Bearer #{EmbedWorkflow.pkey!}" if auth
      request["X-Embed-Workflow-SK"] = EmbedWorkflow.skey! if auth
      request["User-Agent"]    = user_agent
      request
    end

    def user_agent
      "Embed Workflow Ruby - v#{EmbedWorkflow::VERSION}"
    end

    # rubocop:disable Metrics/AbcSize

    def handle_error_response(response:)
      http_status = response.code.to_i
      json        = JSON.parse(response.body)

      case http_status
      when 400
        raise InvalidRequestError.new(
          message: json["message"],
          http_status: http_status,
          request_id: response["x-request-id"]
        )
      when 401
        raise AuthenticationError.new(
          message: json["message"],
          http_status: http_status,
          request_id: response["x-request-id"]
        )
      when 404
        raise APIError.new(
          message: json["message"],
          http_status: http_status,
          request_id: response["x-request-id"]
        )
      when 422
        message  = json["message"]
        errors   = extract_error(json["errors"]) if json["errors"]
        message += " (#{errors})" if errors

        raise InvalidRequestError.new(
          message: message,
          http_status: http_status,
          request_id: response["x-request-id"]
        )
      end
    end

    private

    def create_connection(uri)
      Net::HTTP.new(uri.host, uri.port)
    end

      def extract_error(errors)
        errors.map do |error|
          "#{error['field']}: #{error['message']} (#{error['type']})"
        end.join("; ")
      end
  end
end
