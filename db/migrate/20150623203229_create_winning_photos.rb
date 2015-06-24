class CreateWinningPhotos < ActiveRecord::Migration
  def change
    create_table :winning_photos do |t|
      t.belongs_to :photo_challenge, index: true, foreign_key: true
      t.text :reason

      t.timestamps null: false
    end
  end
end
