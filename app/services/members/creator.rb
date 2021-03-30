# frozen_string_literal: true

module Members
  class Creator
    attr_reader :name, :website_url

    def initialize(name:, website_url:)
      @name = name
      @website_url = website_url
    end

    def self.call(*args)
      new(*args).call
    end

    def call
      member_create!
    end

    private

    def member_create!
      Member.create!(name: name, website_url: website_url)
    end
  end
end
