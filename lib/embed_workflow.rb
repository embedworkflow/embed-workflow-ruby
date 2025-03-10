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

  autoload :Actions, "embed_workflow/actions"
  autoload :AppConnections, "embed_workflow/app_connections"
  autoload :Executions, "embed_workflow/executions"
  autoload :Trigger, "embed_workflow/trigger"
  autoload :CatchHook, "embed_workflow/catch_hook"
  autoload :Users, "embed_workflow/users"
  autoload :Workflows, "embed_workflow/workflows"

  autoload :APIError, "embed_workflow/errors"
  autoload :AuthenticationError, "embed_workflow/errors"
  autoload :InvalidRequestError, "embed_workflow/errors"

  def self.trigger(**args)
    Trigger.create(**args)
  end

  def self.catch_hook(**args)
    CatchHook.create(**args)
  end
end
