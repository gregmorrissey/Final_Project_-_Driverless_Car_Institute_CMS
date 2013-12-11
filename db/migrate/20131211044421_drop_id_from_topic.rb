class DropIdFromTopic < ActiveRecord::Migration
  def change
  	remove_column :topics, :id
  end
end
