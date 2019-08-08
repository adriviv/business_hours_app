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


    def opening_time
        if object.opening_time != nil 
            object.opening_time.strftime("%H:%M")
        end
    end

    def closing_time
        if object.closing_time != nil
            object.closing_time.strftime("%H:%M")
        end
    end 

    def break_starting_time
        if object.break_starting_time != nil 
            object.break_starting_time.strftime("%H:%M")
        end
    end

    def break_finishing_time
        if object.break_finishing_time != nil
            object.break_finishing_time.strftime("%H:%M")
        end
    end    
end