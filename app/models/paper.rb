class Paper < ActiveRecord::Base
  attr_accessible :assignment_id, :description, :file, :name
  belongs_to :assignment
  validates_presence_of :assignment_id, :name, :description

  mount_uploader :file, FileUploader
  acts_as_commentable

  def can_modify(user)
    return self.assignment.course.teachers.include? user
  end

  def filename_short
     self.file.to_s.split('/')[-1] #from file.name full URL name to loremipsum.pdf
  end

end

