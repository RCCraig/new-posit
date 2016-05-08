class RenameCategoriesTable < ActiveRecord::Migration
  def change
    rename_table :catgories, :categories
  end
end
