class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :ui
      t.string :name
      t.boolean :classroom_admin

      t.timestamps
    end
  end
end
