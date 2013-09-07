class Batch < ActiveRecord::Base
  attr_accessible :LC_approve, :corrections_needed, :date_UCB_UCR, :date_UCR_LC, :date_beg_qc, :ingested, :name, :name_short, :notes, :passed_validation, :server_location, :size, :valid_issues, :valid_reels, :grant_id, :num_tiffs
  
  belongs_to :grant
end
