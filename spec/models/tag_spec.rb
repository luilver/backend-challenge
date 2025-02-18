require 'rails_helper'

RSpec.describe Tag, type: :model do
  it { should validate_presence_of(:text) }

  it { should belong_to(:taggable) }
end
