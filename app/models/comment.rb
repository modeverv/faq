class Comment < ActiveRecord::Base
  attr_accessible :question_id, :text

  belongs_to :qestion
  
end
