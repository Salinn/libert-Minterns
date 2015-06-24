class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :picture
      t.text :comment
      t.belongs_to :gallery, index: true, foreign_key: true
      t.belongs_to :photo_challenge, index: true, foreign_key: true
      t.belongs_to :winning_photo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
