# frozen_string_literal: true

module Friendships
  class Creator
    attr_reader :member_id, :friend_id

    def initialize(member_id:, friend_id:)
      @member_id = member_id
      @friend_id = friend_id
    end

    def self.call(*args)
      new(*args).call
    end

    def call
      friendship_create!
    end

    private

    def friendship_create!
      Friendship.create!(member_id: member_id, friend_id: friend_id)
    end
  end
end
