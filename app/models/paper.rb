class Paper < ActiveRecord::Base
  attr_accessible :assignment_id, :description, :file, :name
  belongs_to :assignment

end
