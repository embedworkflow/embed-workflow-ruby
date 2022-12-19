# frozen_string_literal: true

require "embed_workflow/version"
require "json"

module EmbedWorkflow
  def self.skey=(value)
    Base.skey = value
  end

  def self.skey
    Base.skey
  end

  def self.skey!
    skey || raise("EmbedWorkflow.skey not set")
  end

  autoload :Base, "embed_workflow/base"
  autoload :Client, "embed_workflow/client"

  autoload :Workflows, "embed_workflow/workflows"
  autoload :Actions, "embed_workflow/actions"
  autoload :Forms, "embed_workflow/forms"
  autoload :Fields, "embed_workflow/fields"
  autoload :Tenants, "embed_workflow/tenants"
  autoload :Integrations, "embed_workflow/integrations"
  autoload :Users, "embed_workflow/users"

  autoload :APIError, "embed_workflow/errors"
  autoload :AuthenticationError, "embed_workflow/errors"
  autoload :InvalidRequestError, "embed_workflow/errors"
end
