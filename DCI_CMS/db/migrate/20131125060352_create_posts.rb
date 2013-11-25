class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :published
      t.date :published_on
      t.string :post_text
    end
  end
end
