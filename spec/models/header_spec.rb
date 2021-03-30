require 'rails_helper'

RSpec.describe Header, type: :model do
  it { should validate_presence_of(:index) }
end
