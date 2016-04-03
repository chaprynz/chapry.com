class AddBookIdToBookpost < ActiveRecord::Migration
  def change
    add_reference :bookposts, :book_id, index: true, foreign_key: true
  end
end
