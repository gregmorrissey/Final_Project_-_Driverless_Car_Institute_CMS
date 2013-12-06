class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :linkedin
      t.string :twitter
      t.string :facebook
      t.boolean :author
      t.boolean :admin
      t.string :bio
      t.string :photo

      t.timestamps
    end
  end
end
