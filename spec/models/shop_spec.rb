require 'rails_helper'

RSpec.describe Shop, type: :model do
  it "has a valid factory" do
    shop = FactoryGirl.create :shop
    expect(shop).to be_valid
  end
end

describe Shop do
  it { is_expected.to validate_presence_of(:name) }
end