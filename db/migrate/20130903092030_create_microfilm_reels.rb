class CreateMicrofilmReels < ActiveRecord::Migration
  def change
    create_table :microfilm_reels do |t|
      t.date :date_shipped_scan
      t.string :tracking_number
      t.date :date_tiffs_shipped_ucr
      t.date :date_film_returned
      t.boolean :shelved_at_ucb
      t.date :date_shipped_rescan
      t.string :rescan_tracking_number
      t.date :date_shipped_lc
      t.string :vendor_project_id

      t.timestamps
    end
  end
end
