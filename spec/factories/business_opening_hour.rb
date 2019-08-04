FactoryGirl.define do
    factory :business_opening_hour do
      day  "Monday"
      opening_time DateTime.strptime('09/01/2009 10:30', '%m/%d/%Y %H:%M')
      closing_time DateTime.strptime('09/01/2009 20:00', '%m/%d/%Y %H:%M')
      break_starting_time DateTime.strptime('09/01/2009 15:00', '%m/%d/%Y %H:%M')
      break_finishing_time DateTime.strptime('09/01/2009 17:00', '%m/%d/%Y %H:%M')
    end
  end
