class CreateJoinTableTopics < ActiveRecord::Migration
  def change
    create_join_table :posts, :tags, table_name: :topics do |t|
      t.index  :post_id
      t.index  :tag_id
    end
  end
end
