class BusinessOpeningHour < ApplicationRecord
    belongs_to :shop
    accepts_nested_attributes_for :shop, :allow_destroy => true

    #Validations
    validates :day, presence: true, inclusion: { in: %w(Sunday Monday Tuesday Wednesday Thursday Friday Saturday)}
    validates :break_starting_time, presence: true
    validates :break_finishing_time, presence: true
    validates :opening_time, uniqueness: { scope: :day, message: "Can open only once a day, if twice: add a break" }
    validates :closing_time, uniqueness: { scope: :day, message: "Can close only once a day, if twice: add a break" }
    
    #private validations
    validate :opening_time_before_closing_time
    validate :break_starting_time_before_break_finishing_time
    validate :break_finishing_time_before_closing_time
    validate :opening_time_before_break_starting_time

    protected 
    def opening_time_before_closing_time
        errors.add(:closing_time, I18n.t('errors.opening_time_before_closing_time')) if opening_time && closing_time && opening_time >= closing_time
    end 

    def break_starting_time_before_break_finishing_time
        errors.add(:break_finishing_time, I18n.t('errors.break_starting_time_before_break_finishing_time')) if break_starting_time && break_finishing_time && break_starting_time >= break_finishing_time
    end 

    def opening_time_before_break_starting_time
        errors.add(:break_starting_time, I18n.t('errors.break_starting_time_before_break_finishing_time')) if opening_time  && break_starting_time && opening_time  >= break_starting_time
    end 

    def break_finishing_time_before_closing_time
        errors.add(:break_finishing_time, I18n.t('errors.break_starting_time_before_break_finishing_time')) if break_finishing_time && closing_time && break_finishing_time >= closing_time
    end 
    # <%= render 'form_business_opening_hour', :f => builder %>


end


