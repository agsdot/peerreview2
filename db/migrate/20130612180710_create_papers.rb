class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.integer :assignment_id
      t.string :name
      t.string :description
      t.string :file

      t.timestamps
    end
  end
end
