class RemoveClassroomAdminFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :classroom_admin
  end

  def down
    add_column :users, :classroom_admin, :boolean
  end
end
