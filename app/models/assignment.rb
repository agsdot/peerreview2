class Assignment < ActiveRecord::Base
  attr_accessible :course_id, :name
  belongs_to :course
  has_many :papers

  validates_presence_of :name
  validates_presence_of :course_id

  def can_modify(user)
    return self.course.teachers.include? user
  end

end
