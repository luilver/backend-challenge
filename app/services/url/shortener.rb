# frozen_string_literal: true

require 'ffaker'

module Url
  class Shortener
    attr_reader :params

    def initialize(params:)
      @params = params
    end

    def self.call(*args)
      new(*args).call
    end

    def call
      short_url
    end

    private

    def short_url
      "bit.ly/#{FFaker::Lorem::word[0...3]}"
    end
  end
end
