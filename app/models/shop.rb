# frozen_string_literal: true

class Shop < ApplicationRecord
  has_many :business_opening_hours, :dependent => :delete_all
  accepts_nested_attributes_for :business_opening_hours, allow_destroy: true

  # ## Validations
  validates :name, presence: true
end
