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
      member = member_create!
      pull_tags member
      member
    end

    private

    def member_create!
      Member.create!(name: name, website_url: website_url)
    end

    def pull_tags(member)
      Url::Scrapper.call(member: member)
    end
  end
end
