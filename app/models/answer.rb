class Answer < ActiveRecord::Base
 validates_presence_of :question_id, :text
  
  belongs_to :question
end
