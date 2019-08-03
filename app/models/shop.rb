class Shop < ApplicationRecord
    has_many :business_opening_hours
    accepts_nested_attributes_for :business_opening_hours, update_only: true

    ## Validations
    validates :name, presence: true



end
