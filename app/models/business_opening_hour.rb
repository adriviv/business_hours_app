# frozen_string_literal: true

class BusinessOpeningHour < ApplicationRecord
  belongs_to :shop
  accepts_nested_attributes_for :shop, allow_destroy: true

  # Validations
  validates :day, inclusion: { in: [0, 1, 2, 3, 4, 5, 6] }

  # private validations
  validate :opening_time_before_closing_time
  validate :break_starting_time_before_break_finishing_time
  validate :break_finishing_time_before_closing_time
  validate :opening_time_before_break_starting_time

  protected

  def opening_time_before_closing_time
    errors.add(:closing_time, 'The opening time must be before closing time') if opening_time && closing_time && opening_time >= closing_time
  end

  def break_starting_time_before_break_finishing_time
    errors.add(:break_finishing_time, 'The starting time of the break must be before the finsishing time') if break_starting_time && break_finishing_time && break_starting_time >= break_finishing_time
  end

  def opening_time_before_break_starting_time
    errors.add(:break_starting_time, 'The break cannot start before the opening time') if opening_time && break_starting_time && opening_time >= break_starting_time
  end

  def break_finishing_time_before_closing_time
    errors.add(:break_finishing_time, 'The end of the break cannot be after the closing time') if break_finishing_time && closing_time && break_finishing_time >= closing_time
  end
end
