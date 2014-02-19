class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :project_id, null: false
      t.attachment :photo

      t.timestamps
    end
  end
end
