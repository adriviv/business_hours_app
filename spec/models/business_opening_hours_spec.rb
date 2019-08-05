require 'rails_helper'

RSpec.describe BusinessOpeningHour, type: :model do
    it "has a valid factory" do
      business_opening_hour = FactoryGirl.create :business_opening_hour
      expect(business_opening_hour).to be_valid
    end
  
  
  describe BusinessOpeningHour do
    it { is_expected.to validate_presence_of(:day) }
    it { is_expected.to validate_inclusion_of(:day).in_array(Date::DAYNAMES[1..7])}
    it { should belong_to(:shop) }
  end

end

