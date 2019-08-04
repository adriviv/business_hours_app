# frozen_string_literal: true

Shop.destroy_all

Shop.create!(
  name: 'Le Saint-Amour',
  business_opening_hours_attributes: [
    {
      day: 'Sunday'
    },
    {
      day: 'Monday',
      opening_time: DateTime.strptime('09/01/2009 10:30', '%m/%d/%Y %H:%M'),
      closing_time: DateTime.strptime('09/01/2009 20:00', '%m/%d/%Y %H:%M'),
      break_starting_time: DateTime.strptime('09/01/2009 15:00', '%m/%d/%Y %H:%M'),
      break_finishing_time: DateTime.strptime('09/01/2009 17:00', '%m/%d/%Y %H:%M')
    },
    {
      day: 'Tuesday',
      opening_time: DateTime.strptime('09/01/2009 10:30', '%m/%d/%Y %H:%M'),
      closing_time: DateTime.strptime('09/01/2009 20:00', '%m/%d/%Y %H:%M'),
      break_starting_time: DateTime.strptime('09/01/2009 15:00', '%m/%d/%Y %H:%M'),
      break_finishing_time: DateTime.strptime('09/01/2009 17:00', '%m/%d/%Y %H:%M')
    },
    {
      day: 'Wednesday',
      opening_time: DateTime.strptime('09/01/2009 10:30', '%m/%d/%Y %H:%M'),
      closing_time: DateTime.strptime('09/01/2009 20:00', '%m/%d/%Y %H:%M'),
      break_starting_time: DateTime.strptime('09/01/2009 15:00', '%m/%d/%Y %H:%M'),
      break_finishing_time: DateTime.strptime('09/01/2009 17:00', '%m/%d/%Y %H:%M')
    },
    {
      day: 'Thursday',
      opening_time: DateTime.strptime('09/01/2009 10:30', '%m/%d/%Y %H:%M'),
      closing_time: DateTime.strptime('09/01/2009 20:00', '%m/%d/%Y %H:%M'),
      break_starting_time: DateTime.strptime('09/01/2009 15:00', '%m/%d/%Y %H:%M'),
      break_finishing_time: DateTime.strptime('09/01/2009 17:00', '%m/%d/%Y %H:%M')
    },
    {
      day: 'Friday',
      opening_time: DateTime.strptime('09/01/2009 10:30', '%m/%d/%Y %H:%M'),
      closing_time: DateTime.strptime('09/01/2009 20:00', '%m/%d/%Y %H:%M'),
      break_starting_time: DateTime.strptime('09/01/2009 15:00', '%m/%d/%Y %H:%M'),
      break_finishing_time: DateTime.strptime('09/01/2009 17:00', '%m/%d/%Y %H:%M')
    },
    {
      day: 'Saturday',
      opening_time: DateTime.strptime('09/01/2009 10:30', '%m/%d/%Y %H:%M'),
      closing_time: DateTime.strptime('09/01/2009 20:00', '%m/%d/%Y %H:%M')
    }
  ]
)

Shop.create!(
  name: 'Coutellerie Laguiole-Renaud',
  business_opening_hours_attributes: [
    {
      day: 'Sunday',
      opening_time: DateTime.strptime('09/01/2009 09:00', '%m/%d/%Y %H:%M'),
      closing_time: DateTime.strptime('09/01/2009 17:00', '%m/%d/%Y %H:%M')
    },
    {
      day: 'Monday',
      opening_time: DateTime.strptime('09/01/2009 09:00', '%m/%d/%Y %H:%M'),
      closing_time: DateTime.strptime('09/01/2009 17:00', '%m/%d/%Y %H:%M')
    },
    {
      day: 'Tuesday',
      opening_time: DateTime.strptime('09/01/2009 09:00', '%m/%d/%Y %H:%M'),
      closing_time: DateTime.strptime('09/01/2009 17:00', '%m/%d/%Y %H:%M')
    },
    {
      day: 'Wednesday',
      opening_time: DateTime.strptime('09/01/2009 10:00', '%m/%d/%Y %H:%M'),
      closing_time: DateTime.strptime('09/01/2009 21:00', '%m/%d/%Y %H:%M'),
      break_starting_time: DateTime.strptime('09/01/2009 12:00', '%m/%d/%Y %H:%M'),
      break_finishing_time: DateTime.strptime('09/01/2009 14:00', '%m/%d/%Y %H:%M')
    },
    {
      day: 'Thursday',
      opening_time: DateTime.strptime('09/01/2009 10:00', '%m/%d/%Y %H:%M'),
      closing_time: DateTime.strptime('09/01/2009 21:00', '%m/%d/%Y %H:%M'),
      break_starting_time: DateTime.strptime('09/01/2009 12:00', '%m/%d/%Y %H:%M'),
      break_finishing_time: DateTime.strptime('09/01/2009 14:00', '%m/%d/%Y %H:%M')
    },
    {
      day: 'Friday'
    },
    {
      day: 'Saturday'
    }
  ]
)
