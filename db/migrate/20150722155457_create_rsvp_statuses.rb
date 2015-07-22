class CreateRsvpStatuses < ActiveRecord::Migration
  def change
    create_table :rsvp_statuses do |t|
      t.belongs_to :rsvp, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
