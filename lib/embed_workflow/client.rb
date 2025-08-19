# frozen_string_literal: true

module EmbedWorkflow
  module Client
    include Kernel
    BASE_API_PATH = "/api/v1".freeze
    BASE_API_URL  = "https://embedworkflow.com/".freeze

    def client
      create_connection(URI.parse(BASE_API_URL)).tap do |client|
        client.use_ssl = true
      end
    end

    def get_request(path:, auth: true, params: {})
      request = build_get_request(path: path, auth: auth, params: params)
      execute_request(request)
    end

    def post_request(path:, auth: true, body: nil)
      request = build_post_request(path: path, auth: auth, body: body)
      execute_request(request)
    end

    def delete_request(path:, auth: true, params: {})
      request = build_delete_request(path: path, auth: auth, params: params)
      execute_request(request)
    end

    def put_request(path:, auth: true, body: nil)
      request = build_put_request(path: path, auth: auth, body: body)
      execute_request(request)
    end

    private

      def execute_request(request)
        response = client.request(request)
        check_errors!(response)

        JSON.parse(response.body) if response.body && (response.body != "")
      end

      def check_errors!(response)
        case response.code.to_i
        when 400
          raise InvalidRequestError.new(
            http_status: 400,
            request_id: response["x-request-id"]
          )
        when 401
          raise AuthenticationError.new(
            http_status: 401,
            request_id: response["x-request-id"]
          )
        when 404
          raise APIError.new(
            http_status: 404,
            request_id: response["x-request-id"]
          )
        when 422
          raise InvalidRequestError.new(
            http_status: 422,
            request_id: response["x-request-id"]
          )
        end
      end

      def create_connection(uri)
        Net::HTTP.new(uri.host, uri.port)
      end

      def build_get_request(path:, auth: false, params: {})
        uri       = URI(path)
        uri.query = URI.encode_www_form(params) if params

        request = Net::HTTP::Get.new(
          uri.to_s,
          "Content-Type" => "application/json"
        )

        add_request_auth_headers(request) if auth
        add_request_headers(request)
        request
      end

      def build_post_request(path:, auth: false, body: nil)
        request      = Net::HTTP::Post.new(path, "Content-Type" => "application/json")
        request.body = body.to_json if body

        add_request_auth_headers(request) if auth
        add_request_headers(request)
        request
      end

      def build_delete_request(path:, auth: false, params: {})
        uri       = URI(path)
        uri.query = URI.encode_www_form(params) if params

        request = Net::HTTP::Delete.new(
          uri.to_s,
          "Content-Type" => "application/json"
        )

        add_request_auth_headers(request) if auth
        add_request_headers(request)
        request
      end

      def build_put_request(path:, auth: false, body: nil)
        request      = Net::HTTP::Put.new(path, "Content-Type" => "application/json")
        request.body = body.to_json if body
        add_request_auth_headers(request) if auth
        add_request_headers(request)
        request
      end

      def add_request_auth_headers(request)
        request["Authorization"] = "Bearer #{EmbedWorkflow.skey!}"
        request
      end

      def add_request_headers(request)
        request["User-Agent"] = "Embed Workflow Ruby - v#{EmbedWorkflow::VERSION}"
        request
      end
  end
end
