class AddFaQs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.integer :property_id
      t.text :question
      t.text :description
      t.string :category
      
      t.timestamps
    end
  end
end
