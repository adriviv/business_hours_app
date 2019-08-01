class CreateBusinessOpeningHours < ActiveRecord::Migration[5.2]
  def change
    create_table :business_opening_hours do |t|
      t.integer :day
      t.time :opening_time
      t.time :close_time
      t.time :break_duration
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
