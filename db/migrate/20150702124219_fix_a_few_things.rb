class FixAFewThings < ActiveRecord::Migration
  def change
    remove_column :events, :start_daettime
    remove_column :events, :end_datetime
    
    add_column :events, :start_date, :Date
    add_column :events, :start_time, :Time
    add_column :events, :end_date, :Date
    add_column :events, :end_time, :Time
    
    remove_column :photos, :winning_photo_id
    
    add_column :winning_photos, :picture, :belongs_to
  end
end
