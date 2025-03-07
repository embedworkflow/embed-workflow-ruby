# frozen_string_literal: true

require_relative "../lib/embed_workflow"
require "net/http"

describe "app_connections" do
  before do
    allow_any_instance_of(EmbedWorkflow::Client)
      .to receive(:execute_request)
      .with(instance_of(Net::HTTPRequest))
      .and_return("response")
  end

  describe "#list" do
    before do
      allow_any_instance_of(EmbedWorkflow::Client)
        .to receive(:get_request)
        .with({ path: "/api/v1/app_connections", params: {} })
        .and_return("response")
    end

    it "sends the correct parameters to the app_connections API" do
      EmbedWorkflow::AppConnections.list
    end

    context "with pagination parameters" do
      before do
        allow_any_instance_of(EmbedWorkflow::Client)
          .to receive(:get_request)
          .with({
            path: "/api/v1/app_connections",
            params: {
              starting_after: "550e8400-e29b-41d4-a716-446655440000",
              limit: 50
            }
          })
          .and_return("response")
      end

      it "sends the correct pagination parameters" do
        EmbedWorkflow::AppConnections.list(
          starting_after: "550e8400-e29b-41d4-a716-446655440000",
          limit: 50
        )
      end
    end

    context "with user_key parameter" do
      before do
        allow_any_instance_of(EmbedWorkflow::Client)
          .to receive(:get_request)
          .with({
            path: "/api/v1/app_connections",
            params: { user_key: "api-user-1" }
          })
          .and_return("response")
      end

      it "sends the correct user_key parameter" do
        EmbedWorkflow::AppConnections.list(user_key: "api-user-1")
      end
    end
  end

  describe "#fetch" do
    before do
      allow_any_instance_of(EmbedWorkflow::Client)
        .to receive(:get_request)
        .with({
          path: "/api/v1/app_connections/75233470-6316-4fa9-a7f5-5196f3d06067",
          params: {}
        })
        .and_return("response")
    end

    it "sends the correct parameters to the app_connections API" do
      EmbedWorkflow::AppConnections.fetch(id: "75233470-6316-4fa9-a7f5-5196f3d06067")
    end

    context "with user_key parameter" do
      before do
        allow_any_instance_of(EmbedWorkflow::Client)
          .to receive(:get_request)
          .with({
            path: "/api/v1/app_connections/75233470-6316-4fa9-a7f5-5196f3d06067",
            params: { user_key: "api-user-1" }
          })
          .and_return("response")
      end

      it "sends the correct user_key parameter" do
        EmbedWorkflow::AppConnections.fetch(
          id: "75233470-6316-4fa9-a7f5-5196f3d06067",
          user_key: "api-user-1"
        )
      end
    end
  end

  describe "#create" do
    before do
      config = {
        api_key: "sk-1234567890abcdef",
        organization_id: "org-abcdefg123456"
      }

      allow_any_instance_of(EmbedWorkflow::Client)
        .to receive(:post_request)
        .with({
          path: "/api/v1/app_connections",
          body: {
            name: "My OpenAI Connection",
            app_type: "openai",
            config: config
          }
        })
        .and_return("response")
    end

    it "sends the correct parameters to the app_connections API" do
      config = {
        api_key: "sk-1234567890abcdef",
        organization_id: "org-abcdefg123456"
      }

      EmbedWorkflow::AppConnections.create(
        name: "My OpenAI Connection",
        app_type: "openai",
        config: config
      )
    end
  end

  describe "#update" do
    before do
      allow_any_instance_of(EmbedWorkflow::Client)
        .to receive(:put_request)
        .with({
          path: "/api/v1/app_connections/75233470-6316-4fa9-a7f5-5196f3d06067",
          body: { name: "Updated OpenAI Connection" }
        })
        .and_return("response")
    end

    it "sends the correct parameters to the app_connections API" do
      EmbedWorkflow::AppConnections.update(
        id: "75233470-6316-4fa9-a7f5-5196f3d06067",
        name: "Updated OpenAI Connection"
      )
    end
  end

  describe "#delete" do
    before do
      allow_any_instance_of(EmbedWorkflow::Client)
        .to receive(:delete_request)
        .with({
          path: "/api/v1/app_connections/75233470-6316-4fa9-a7f5-5196f3d06067",
          params: {}
        })
        .and_return("response")
    end

    it "sends the correct parameters to the app_connections API" do
      EmbedWorkflow::AppConnections.delete(id: "75233470-6316-4fa9-a7f5-5196f3d06067")
    end
  end
end
