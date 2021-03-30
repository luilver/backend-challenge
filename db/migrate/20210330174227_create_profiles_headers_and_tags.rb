class CreateProfilesHeadersAndTags < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :member

      t.timestamps
    end

    create_table :headers do |t|
      t.string :index
    end

    create_table :tags do |t|
      t.string :text
      t.references :taggable, polymorphic: true
      t.references :profile

      t.timestamps
    end

    add_index :profiles, [:taggable_type, :taggable_id]
  end
end
