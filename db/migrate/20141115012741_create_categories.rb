class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.integer :parent
      t.string :child
      
      t.timestamps
    end
  end
end
