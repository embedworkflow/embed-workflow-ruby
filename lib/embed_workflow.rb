# frozen_string_literal: true

require "embed_workflow/version"
require "json"

module EmbedWorkflow
  API_HOSTNAME = "embedworkflow.com"

  def self.pkey=(value)
    Base.pkey = value
  end

  def self.pkey
    Base.pkey
  end

  def self.pkey!
    pkey || raise("EmbedWorkflow.pkey not set")
  end

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

  # Resources
  autoload :Workflows, "embed_workflow/workflows"
  autoload :Actions, "embed_workflow/actions"
  autoload :Forms, "embed_workflow/forms"

  # Errors
  autoload :APIError, "embed_workflow/errors"
  autoload :AuthenticationError, "embed_workflow/errors"
  autoload :InvalidRequestError, "embed_workflow/errors"

  pkey               = ENV["EMBED_WORKFLOW_API_KEY"]
  EmbedWorkflow.pkey = pkey unless pkey.nil?

  # Triggers the workflow with the given key
  #
  # @param [String] key The workflow key
  # @param [String] actor The actor ID
  # @param [Array<String>] recipients The recipient IDs
  # @param [Hash] data The data to pass to the workflow
  # @param [String] cancellation_key An optional key to identify this workflow
  #  invocation for cancelling
  # @param [String] tenant An optional tenant identifier
  #
  # @return [Hash] A workflow trigger result
  def self.notify(**args)
    EmbedWorkflow::Workflows.trigger(**args)
  end
end
