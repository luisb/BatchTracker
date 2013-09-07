class AddNumTiffsToBatches < ActiveRecord::Migration
  def change
    add_column :batches, :num_tiffs, :integer, :before => :server_location
  end
end
