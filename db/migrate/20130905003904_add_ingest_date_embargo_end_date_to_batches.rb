class AddIngestDateEmbargoEndDateToBatches < ActiveRecord::Migration
  def change
    add_column :batches, :ingest_date, :date
    add_column :batches, :embargo_end_date, :date
  end
end
