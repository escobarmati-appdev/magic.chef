class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :user_ingredients_content
      t.string :role
      t.integer :user_id

      t.timestamps
    end
  end
end
