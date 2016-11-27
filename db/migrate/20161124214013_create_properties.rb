class CreateProperty < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :user_id
      t.string :property_name
      t.string :property_location
      t.text :description
      
      t.timestamps
     end
  end
end
