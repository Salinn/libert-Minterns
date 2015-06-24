class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :up_votes
      t.integer :down_votes
      t.integer :total

      t.timestamps null: false
    end
  end
end
