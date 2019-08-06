# frozen_string_literal: true

class OrderWeekdayService
  def order_weekdays(shop)
    # order day according to Time.now & change format to intger
    weekdays = Date::DAYNAMES[0..6].rotate!(Date::DAYNAMES[0..6].index(Time.now.strftime('%A'))).map do |weekday|
      Date.parse(weekday).strftime('%w')
    end

    case_weekdays_ordered = weekdays.each_with_index.map do |day, i|
      "WHEN '#{day}' THEN #{i}"
    end

    shop.order("CASE day #{case_weekdays_ordered.join(' ')} END")
  end
end
