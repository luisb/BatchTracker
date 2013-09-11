class TitleReelAssignment < ActiveRecord::Base
  attr_accessible :reel_id, :title_id
  
  belongs_to :title
  belongs_to :reel
end
