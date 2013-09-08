class Title < ActiveRecord::Base
  attr_accessible :beg_date, :city_publication, :end_date, :issue_edition_pattern, :lccn, :title, :abbrv_title_id
  
  belongs_to :abbrv_title
end
