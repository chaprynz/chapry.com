class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.text :content
      t.string :tag

      t.timestamps null: false
    end
  end
end
