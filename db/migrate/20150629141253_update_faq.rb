class UpdateFaq < ActiveRecord::Migration
  def change
    remove_column :faqs, :rating_id
    remove_column :faqs, :user_id
    add_reference :ratings, :faq, index: true
  end
end
