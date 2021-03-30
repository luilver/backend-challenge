class Profile < ApplicationRecord
  belongs_to :member

  has_many :tags
end
