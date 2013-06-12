class Assignment < ActiveRecord::Base
  attr_accessible :course_id, :name
  belongs_to :course
  validates_presence_of :name
  validates_presence_of :course_id
end
