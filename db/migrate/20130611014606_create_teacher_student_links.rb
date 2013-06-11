class CreateTeacherStudentLinks < ActiveRecord::Migration
  def change
    create_table :teacher_student_links do |t|
      t.integer :user_id
      t.integer :student_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
