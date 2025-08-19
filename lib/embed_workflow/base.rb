# frozen_string_literal: true

module EmbedWorkflow
  module Base
    UNSET = Object.new.freeze

    attr_accessor :skey

    class << self
      attr_accessor :skey
    end

    private

      def prepare_params(hash)
        hash.reject { |_, v| v == UNSET }
      end
  end
end
