class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.belongs_to :rating, index: true, foreign_key: true
      t.belongs_to :question, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :faq_section, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
