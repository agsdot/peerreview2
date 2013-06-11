class TeacherStudentLink < ActiveRecord::Base
  attr_accessible :student_id, :teacher_id, :user_id
  belongs_to :student, :class_name => "User"
  belongs_to :teacher, :class_name => "User"
end
