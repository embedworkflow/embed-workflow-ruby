# frozen_string_literal: true

require_relative "../lib/embed_workflow"
require "net/http"

describe "users" do
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
        .with({ path: "/api/v1/users", params: {} })
        .and_return("response")
    end

    it "sends the correct parameters to the users API" do
      EmbedWorkflow::Users.list
    end

    context "with pagination parameters" do
      before do
        allow_any_instance_of(EmbedWorkflow::Client)
          .to receive(:get_request)
          .with({ path: "/api/v1/users", params: { starting_after: "550e8400-e29b-41d4-a716-446655440000", limit: 10 } })
          .and_return("response")
      end

      it "sends the correct pagination parameters" do
        EmbedWorkflow::Users.list(starting_after: "550e8400-e29b-41d4-a716-446655440000", limit: 10)
      end
    end
  end

  describe "#fetch" do
    before do
      allow_any_instance_of(EmbedWorkflow::Client)
        .to receive(:get_request)
        .with({ path: "/api/v1/users/api-user-1" })
        .and_return("response")
    end

    it "sends the correct parameters to the users API" do
      EmbedWorkflow::Users.fetch(key: "api-user-1")
    end
  end

  describe "#delete" do
    before do
      allow_any_instance_of(EmbedWorkflow::Client)
        .to receive(:delete_request)
        .with({ path: "/api/v1/users/api-user-1" })
        .and_return("response")
    end

    it "sends the correct parameters to the users API" do
      EmbedWorkflow::Users.delete(key: "api-user-1")
    end
  end

  describe "#upsert" do
    context "with minimum parameters" do
      before do
        allow_any_instance_of(EmbedWorkflow::Client)
          .to receive(:put_request)
          .with({ 
            path: "/api/v1/users/api-user-1",
            body: { key: "api-user-1" }
          })
          .and_return("response")
      end

      it "sends the correct parameters to the users API" do
        EmbedWorkflow::Users.upsert(key: "api-user-1")
      end
    end

    context "with all parameters" do
      before do
        config = { user_data: { foo: "bar" } }
        allow_any_instance_of(EmbedWorkflow::Client)
          .to receive(:put_request)
          .with({ 
            path: "/api/v1/users/api-user-1",
            body: { 
              key: "api-user-1",
              name: "Jane Doe",
              email: "jane@example.com",
              config: config
            }
          })
          .and_return("response")
      end

      it "sends the correct parameters to the users API" do
        config = { user_data: { foo: "bar" } }
        EmbedWorkflow::Users.upsert(
          key: "api-user-1",
          name: "Jane Doe",
          email: "jane@example.com",
          config: config
        )
      end
    end
  end
end
