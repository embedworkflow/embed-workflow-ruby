# frozen_string_literal: true

require_relative "../lib/embed_workflow"

describe "workflows" do
  before do
    EmbedWorkflow.pkey = "pk_live_REPLACE_ME"
    EmbedWorkflow.skey = "sk_live_REPLACE_ME"

    allow_any_instance_of(EmbedWorkflow::Client)
      .to receive(:execute_request)
      .with({ request: "request" })
      .and_return("ok")
  end
  describe "#create" do
    before do
      allow_any_instance_of(EmbedWorkflow::Client)
        .to receive(:post_request)
        .with({ auth: true,
                path: "/api/workflows",
                params: {} })
        .and_return("request")
    end
    it "sends the correct parameters to the tenants API" do
      EmbedWorkflow::Workflows.create(name: "Hi")
    end
  end

  describe "#get" do
    before do
      allow_any_instance_of(EmbedWorkflow::Client)
        .to receive(:get_request)
        .with({ auth: true,
                path: "/v1/tenants/tenant_id" })
        .and_return("request")
    end
    it "sends the correct parameters to the tenants API" do
      EmbedWorkflow::Workflows.get(id: "tenant_id")
    end
  end

  describe "#delete" do
    before do
      allow_any_instance_of(EmbedWorkflow::Client)
        .to receive(:delete_request)
        .with({ auth: true,
                path: "/v1/tenants/tenant_id" })
        .and_return("request")
    end
    it "sends the correct parameters to the tenants API" do
      EmbedWorkflow::Workflows.delete(id: "tenant_id")
    end
  end

  describe "#set" do
    before do
      body = { name: "My tenant", settings: { branding: { primary_color: "#FFFFFF" } } }
      allow_any_instance_of(EmbedWorkflow::Client).to receive(:put_request)
        .with({ auth: true,
                body: body, path: "/v1/tenants/tenant_id" })
        .and_return("request")
    end
    it "sends the correct parameters to the tenants API" do
      tenant_data = { name: "My tenant", settings: { branding: { primary_color: "#FFFFFF" } } }
      EmbedWorkflow::Workflows.set(id: "tenant_id", tenant_data: tenant_data)
    end
  end
end
# rubocop:enable Metrics/BlockLength
