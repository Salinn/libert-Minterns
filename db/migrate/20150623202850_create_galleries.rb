class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.belongs_to :event, index: true, foreign_key: true
      t.belongs_to :photo_challenge, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
