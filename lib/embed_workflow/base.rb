# frozen_string_literal: true

module EmbedWorkflow
  module Base
    attr_accessor :skey

    class << self
      attr_accessor :skey
    end
  end
end
