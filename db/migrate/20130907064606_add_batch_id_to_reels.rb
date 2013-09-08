class AddBatchIdToReels < ActiveRecord::Migration
  def change
    add_column :reels, :batch_id, :integer
    add_index :reels, :batch_id
  end
end
