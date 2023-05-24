class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :recipe_content
      t.integer :user_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
