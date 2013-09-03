class MicrofilmReel < ActiveRecord::Base
  attr_accessible :date_film_returned, :date_shipped_lc, :date_shipped_rescan, :date_shipped_scan, :date_tiffs_shipped_ucr, :rescan_tracking_number, :shelved_at_ucb, :tracking_number, :vendor_project_id
end
