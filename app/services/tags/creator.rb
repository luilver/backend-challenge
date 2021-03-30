# frozen_string_literal: true

module Tags
  class Creator
    attr_reader :text, :taggable

    def initialize(text:, taggable:)
      @text = text
      @taggable = taggable
    end

    def self.call(*args)
      new(*args).call
    end

    def call
      tag_create
    end

    private

    def tag_create
      Tag.create!(text: text, taggable: taggable)
    end
  end
end
