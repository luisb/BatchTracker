class CreateTitleReelAssignments < ActiveRecord::Migration
  def change
    create_table :title_reel_assignments do |t|
      t.integer :title_id
      t.integer :reel_id

      t.timestamps
    end
    add_index :title_reel_assignments, :title_id
    add_index :title_reel_assignments, :reel_id
  end
end
