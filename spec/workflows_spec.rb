# frozen_string_literal: true

require_relative "../lib/embed_workflow"

describe "workflows" do
  before do
    EmbedWorkflow.pkey = "pk_live_REPLACE_ME"
    EmbedWorkflow.skey = "sk_live_REPLACE_ME"
  end
end
