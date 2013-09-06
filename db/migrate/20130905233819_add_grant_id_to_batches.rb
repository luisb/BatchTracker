class AddGrantIdToBatches < ActiveRecord::Migration
  def change
    add_column :batches, :grant_id, :integer
    add_index :batches, :grant_id
  end
end
