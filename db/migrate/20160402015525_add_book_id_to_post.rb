class AddBookIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :book_id, :integer
  end
end
