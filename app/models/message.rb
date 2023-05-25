# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  content    :string
#  role       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_id  :integer
#
class Message < ApplicationRecord

  belongs_to(:recipe, { :required => true, :class_name => "Recipe", :foreign_key => "recipe_id" })

  validates :content, presence: true
  validates :role, presence: true

end
