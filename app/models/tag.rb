class Tag < ApplicationRecord
  belongs_to :taggable, polymorphic: true

  validates_presence_of :text
end
