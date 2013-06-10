class FixColumnNameUser < ActiveRecord::Migration
  def up
    rename_column :users, :ui, :uid
  end

  def down
    rename_column :users, :uid, :ui
  end
end



