# == Schema Information
#
# Table name: recipes
#
#  id             :integer          not null, primary key
#  recipe_content :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  ingredient_id  :integer
#  user_id        :integer
#
class Recipe < ApplicationRecord

  belongs_to(:ingredient, { :required => true, :class_name => "Ingredient", :foreign_key => "ingredient_id" })

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })

end
