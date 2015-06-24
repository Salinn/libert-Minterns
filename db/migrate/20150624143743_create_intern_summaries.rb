class CreateInternSummaries < ActiveRecord::Migration
  def change
    create_table :intern_summaries do |t|
      t.string :title
      t.text :content
      t.text :content
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
