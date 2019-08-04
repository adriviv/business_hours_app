

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


# require 'rails_helper'


# RSpec.describe ShopsController, type: :controller do

#     describe "POST #create" do
#       context "with valid attributes" do
#         it "create new shop" do
#             post :create, FactoryGirl.attributes_for(:shop)
#             expect(Shop.count).to eq(1)
#         end
#       end
#     end
#   end

