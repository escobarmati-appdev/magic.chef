# == Schema Information
#
# Table name: recipes
#
#  id         :integer          not null, primary key
#  ingredient :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
class Recipe < ApplicationRecord

  has_many(:messages, { :class_name => "Message", :foreign_key => "recipe_id", :dependent => :destroy })

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })

  validates :ingredient, :presence => true

end
