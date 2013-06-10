class User < ActiveRecord::Base
  attr_accessible :classroom_admin, :name, :provider, :ui
end
