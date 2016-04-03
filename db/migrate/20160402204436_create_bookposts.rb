class CreateBookposts < ActiveRecord::Migration
  def change
    create_table :bookposts do |t|
      t.string :title
      t.text :note
      t.string :tag
      t.references :book, index: true, foreign_key: true
      t.boolean :header, :null => false, :default => false

      t.timestamps null: false
    end
  end
end
