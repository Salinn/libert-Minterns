class CreatePhotoChallenges < ActiveRecord::Migration
  def change
    create_table :photo_challenges do |t|
      t.string :title
      t.text :theme
      t.belongs_to :year, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
