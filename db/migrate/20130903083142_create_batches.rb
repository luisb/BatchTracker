class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :name
      t.string :name_short
      t.date :date_beg_qc
      t.boolean :corrections_needed
      t.boolean :passed_validation
      t.date :date_UCB_UCR
      t.date :date_UCR_LC
      t.boolean :LC_approve
      t.integer :valid_reels
      t.integer :valid_issues
      t.integer :size
      t.string :server_location
      t.boolean :ingested
      t.text :notes

      t.timestamps
    end
  end
end
