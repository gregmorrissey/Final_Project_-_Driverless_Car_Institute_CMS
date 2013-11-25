class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
