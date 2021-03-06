# frozen_string_literal: true

class CreateBusinessOpeningHours < ActiveRecord::Migration[5.2]
  def change
    create_table :business_opening_hours do |t|
      t.string :day
      t.time :opening_time
      t.time :closing_time
      t.time :break_starting_time
      t.time :break_finishing_time
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
