class RenameBatchesDateUcbUcr < ActiveRecord::Migration
  def up
    rename_column :batches, :date_UCB_UCR, :date_ucr_recvd
  end

  def down
    rename_column :batches, :date_ucr_recvd, :date_UCB_UCR
  end
end
