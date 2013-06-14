class Course < ActiveRecord::Base
  attr_accessible :name
  has_many :course_students
  has_many :students, :class_name => "User", :through => :course_students
  has_many :course_teachers
  has_many :teachers, :class_name => "User", :through => :course_teachers
  has_many :assignments

  def can_modify(user)
    return self.teachers.include? user
  end
end

