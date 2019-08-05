require 'rails_helper'

RSpec.describe Shop, type: :model do
  it "has a valid factory" do
    shop = FactoryGirl.create :shop
    expect(shop).to be_valid
  end


  # Testing validations
  describe Shop do
    it { is_expected.to validate_presence_of(:name) }
    it { should have_many(:business_opening_hours) }
  end

  # Testing one to many relationship
  describe "testing for has many business hours" do
    before do
      @shop = Shop.new(name: "Zara")
      @business_opening_hours = BusinessOpeningHour.new(shop_id: @shop.id, day: "Sunday", opening_time: Time.now, closing_time: Time.now + 6.hours, break_starting_time: Time.now + 2.hours, break_finishing_time: Time.now + 3.hours)
      @shop.business_opening_hours << @business_opening_hours
    end
    it "in the post model" do
      @shop.business_opening_hours.first.day.should == "Sunday"
    end
  end
end