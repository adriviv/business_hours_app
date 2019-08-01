class BusinessOpeningHour < ApplicationRecord
    belongs_to :shop

    #Validations
    validates :day, presence: true
    validates_inclusion_of :day, :in => 1..7
    validates :break_duration, presence: true, numericality: { greater_than_or_equal_to: 0 }

end
