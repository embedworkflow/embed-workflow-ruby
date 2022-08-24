# frozen_string_literal: true

module EmbedWorkflow
  ## The Base class handles setting and reading the EmbedWorkflow API Key for authentication
  module Base
    attr_accessor :pkey, :skey

    class << self
      attr_accessor :pkey, :skey
    end
  end
end
