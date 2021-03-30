# frozen_string_literal: true

require 'ffaker'

module Url
  class Scrapper
    attr_reader :member

    def initialize(member:)
      @member = member
    end

    def self.call(*args)
      new(*args).call
    end

    def call
      scrap_url
    end

    private

    def scrap_url
      h1 = Header.first
      h2 = Header.second
      h3 = Header.third

      profile = member.build_profile
      profile.tags << Tags::Creator.call(text: FFaker::Lorem.sentence, taggable: h1)
      profile.tags << Tags::Creator.call(text: FFaker::Lorem.sentence, taggable: h2)
      profile.tags << Tags::Creator.call(text: FFaker::Lorem.sentence, taggable: h3)
      profile.save
    end
  end
end
