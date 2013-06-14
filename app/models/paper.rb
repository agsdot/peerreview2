class Paper < ActiveRecord::Base
  attr_accessible :assignment_id, :description, :file, :name
  belongs_to :assignment
  validates_presence_of :assignment_id, :name, :description

  mount_uploader :file, FileUploader
  acts_as_commentable

  def can_modify(user)
    return self.assignment.course.teachers.include? user
  end


end

