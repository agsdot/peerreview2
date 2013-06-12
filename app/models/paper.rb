class Paper < ActiveRecord::Base
  attr_accessible :assignment_id, :description, :file, :name
  belongs_to :assignment

  validates_presence_of :assignment_id, :name, :description
end

