# == Schema Information
#
# Table name: ingredients
#
#  id                       :integer          not null, primary key
#  role                     :string
#  user_ingredients_content :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  user_id                  :integer
#
class Ingredient < ApplicationRecord

  has_many(:recipes, { :class_name => "Recipe", :foreign_key => "ingredient_id", :dependent => :destroy })
  
end
