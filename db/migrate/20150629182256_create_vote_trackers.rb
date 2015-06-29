class CreateVoteTrackers < ActiveRecord::Migration
  def change
    create_table :vote_trackers do |t|
      t.belongs_to :rating, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.string :vote_type

      t.timestamps null: false
    end
  end
end
