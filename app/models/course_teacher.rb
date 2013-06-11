class CourseTeacher < ActiveRecord::Base
  belongs_to :course
  belongs_to :teacher, :class_name => "User"
end