class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :start_daettime
      t.datetime :end_datetime
      t.string :cost
      t.integer :reoccur

      t.timestamps null: false
    end
  end
end
