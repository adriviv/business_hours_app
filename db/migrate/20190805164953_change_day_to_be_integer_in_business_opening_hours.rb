class ChangeDayToBeIntegerInBusinessOpeningHours < ActiveRecord::Migration[5.2]
  def change
    change_column :business_opening_hours, :day, :integer, using: 'day::integer'
  end
end
