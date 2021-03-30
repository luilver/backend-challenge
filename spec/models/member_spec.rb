require 'rails_helper'

RSpec.describe Member, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:website_url) }
  it { should validate_presence_of(:shorten_url) }
end
