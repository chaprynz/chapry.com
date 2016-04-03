class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :content
      t.integer :price

      t.timestamps null: false
    end
  end
end
