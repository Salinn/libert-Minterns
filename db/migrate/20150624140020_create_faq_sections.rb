

class CreateFaqSections < ActiveRecord::Migration
  def change
    create_table :faq_sections do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
