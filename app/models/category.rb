class Category < ActiveRecord::Base
  attr_accessible :category_id, :name
  
  has_many :questions
  #  has_many :categories
  #  belongs_to :category

end
