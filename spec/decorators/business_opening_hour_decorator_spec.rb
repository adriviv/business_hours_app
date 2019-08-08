require 'rails_helper'

RSpec.describe BusinessOpeningHourDecorator do
    let(:business_opening_hour) { FactoryGirl.build_stubbed(:business_opening_hour).decorate }

    it 'returns the opening_time strftime in H:M' do
        expect(business_opening_hour.opening_time).to eq('10:30')
    end
    
    it 'returns the closing_time strftime in H:M' do
        expect(business_opening_hour.closing_time).to eq('20:00')
    end

    it 'returns the break_starting_time strftime in H:M' do
        expect(business_opening_hour.break_starting_time).to eq('15:00')
    end

    it 'returns the break_finishing_time strftime in H:M' do
        expect(business_opening_hour.break_finishing_time).to eq('17:00')
    end

    it 'returns the day in string' do
        expect(business_opening_hour.day).to eq('Lundi')
    end
end
