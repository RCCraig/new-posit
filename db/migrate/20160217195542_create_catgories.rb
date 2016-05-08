class CreateCatgories < ActiveRecord::Migration
  def change
    create_table :catgories do |t|
      t.string :name
      t.timestamps
    end
  end
end
