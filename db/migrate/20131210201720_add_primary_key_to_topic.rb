class AddPrimaryKeyToTopic < ActiveRecord::Migration
  def change
  	add_column :topics, :id, :primary_key
  end
end
