# frozen_string_literal: true

require 'ffaker'

module Members
  class Indexer
    def self.call
      Member.all
    end
  end
end
