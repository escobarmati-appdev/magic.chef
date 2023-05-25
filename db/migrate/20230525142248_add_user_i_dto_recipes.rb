class AddUserIDtoRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :User, :user_id, :integer
  end
end
