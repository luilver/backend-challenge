class CreateMembersAndFriendships < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :website_url
      t.string :shorten_url

      t.timestamps
    end

    create_table :friendships do |t|
      t.references :member
      t.references :friend
   
      t.timestamps
    end
  end
end
