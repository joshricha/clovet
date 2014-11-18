class ChangeCategoryColumnChildToName < ActiveRecord::Migration
  def change
    rename_column :categories, :child, :name
  end
end
