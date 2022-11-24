# frozen_string_literal: true

module EmbedWorkflow
  module Base
    attr_accessor :pkey, :skey

    class << self
      attr_accessor :pkey, :skey
    end
  end
end
