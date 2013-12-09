class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_title
      t.integer :user_id
      t.boolean :published
      t.date :published_on
      t.text :post_text

      t.timestamps
    end
  end
end
