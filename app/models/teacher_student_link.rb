class TeacherStudentLink < ActiveRecord::Base
  attr_accessible :student_id, :teacher_id, :user_id
end
