# frozen_string_literal: true

require_relative "../lib/embed_workflow"
require "net/http"

describe "workflows" do
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
        .with({ path: "/api/v1/workflows", params: {} })
        .and_return("response")
    end

    it "sends the correct parameters to the workflows API" do
      EmbedWorkflow::Workflows.list
    end

    context "with pagination parameters" do
      before do
        allow_any_instance_of(EmbedWorkflow::Client)
          .to receive(:get_request)
          .with({
            path: "/api/v1/workflows",
            params: {
              starting_after: "550e8400-e29b-41d4-a716-446655440000",
              limit: 10
            }
          })
          .and_return("response")
      end

      it "sends the correct pagination parameters" do
        EmbedWorkflow::Workflows.list(
          starting_after: "550e8400-e29b-41d4-a716-446655440000",
          limit: 10
        )
      end
    end

    context "with user_key parameter" do
      before do
        allow_any_instance_of(EmbedWorkflow::Client)
          .to receive(:get_request)
          .with({
            path: "/api/v1/workflows",
            params: { user_key: "api-user-1" }
          })
          .and_return("response")
      end

      it "sends the correct user_key parameter" do
        EmbedWorkflow::Workflows.list(user_key: "api-user-1")
      end
    end
  end
end
