class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :profile_picture
      t.belongs_to :college, index: true, foreign_key: true
      t.belongs_to :major, index: true, foreign_key: true
      t.belongs_to :department, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
