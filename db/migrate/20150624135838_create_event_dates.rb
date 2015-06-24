class CreateEventDates < ActiveRecord::Migration
  def change
    create_table :event_dates do |t|
      t.date :date
      t.belongs_to :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
