class Grant < ActiveRecord::Base
  attr_accessible :beg_year, :end_year, :notes, :org
end
