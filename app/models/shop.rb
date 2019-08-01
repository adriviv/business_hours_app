class Shop < ApplicationRecord
    has_many :business_opening_hours

    ## Validations
    validates :name, presence: true



end
