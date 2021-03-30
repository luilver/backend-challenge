# frozen_string_literal: true

module Members
  class Reporter
    attr_reader :member_id

    def initialize(member_id:)
      @member_id = member_id
    end

    def self.call(*args)
      new(*args).call
    end

    def call
      member_report
    end

    private

    def member_report
      Member.find member_id
    end
  end
end
