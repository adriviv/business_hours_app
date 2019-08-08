class BusinessOpeningHourDecorator < Draper::Decorator
    delegate_all    

    def day
        case object.day
            when  0 
                object.day = I18n.t("Sunday")
            when  1 
                object.day = I18n.t("Monday")
            when  2 
                object.day =  I18n.t("Tuesday")
            when  3 
                object.day =  I18n.t("Wednesday")
            when  4 
                object.day =  I18n.t("Thursday")
            when  5 
                object.day = I18n.t( "Friday")
            when  6 
                object.day =  I18n.t("Saturday")
        end
    end 

    # def opening_hour
    #      object.opening_hour.strftime("%H:%M")
    # end 
  end