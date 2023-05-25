# == Schema Information
#
# Table name: recipes
#
#  id         :integer          not null, primary key
#  ingredient :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Recipe < ApplicationRecord

  has_many(:messages, { :class_name => "Message", :foreign_key => "recipe_id", :dependent => :destroy })

  validates :ingredient, :presence => true

end
