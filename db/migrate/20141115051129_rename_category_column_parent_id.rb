class RenameCategoryColumnParentId < ActiveRecord::Migration
  def change
    rename_column :categories, :parent, :parent_id
  end
end
