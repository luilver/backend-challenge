class Member < ApplicationRecord
  before_validation :make_shorten_url

  validates_presence_of :name, :website_url, :shorten_url
 
  def friends
    Friendship
      .where("friendships.member_id = ? OR friendships.friend_id = ?", id, id)
  end

  def add_friends(new_friends)
    new_friends = [new_friends] unless new_friends.respond_to? :each

    new_friends.each do |friend|
      Friendship.create!({ member: self, friend: friend })
    end
  end

  def make_shorten_url
    self.shorten_url = ::Url::Shortener.call(params: website_url)
  end

  def number_of_friends
    friends.count
  end
end
