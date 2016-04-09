class AddChangeToBookpost < ActiveRecord::Migration
  def change
    change_column :bookposts, :tag, :integer
  end
end
