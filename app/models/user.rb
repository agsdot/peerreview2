class User < ActiveRecord::Base
  attr_accessible :classroom_admin, :name, :provider, :ui

  has_many :teacher_links, :foreign_key => :student_id, :dependent => :destroy, :class_name => "TeacherStudentLink"
  has_many :student_links, :foreign_key => :teacher_id, :dependent => :destroy, :class_name => "TeacherStudentLink"
  has_many :students, :through => :student_links
  has_many :teachers, :through => :teacher_links

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
    end
  end


end


