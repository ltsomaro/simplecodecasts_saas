class AddCompendium < ActiveRecord::Migration
  def change
    create_table :compendiums do |t|
      t.integer :property_id
      t.integer :faq_view
      t.integer :how_to_view
      t.integer :dining_view
      t.integer :activities_view
      t.integer :rules_view
      t.integer :warning_view
      t.integer :contacts_view
      t.integer :private_setting
      t.integer :skin
      
      t.timestamps
     end
  end
end
