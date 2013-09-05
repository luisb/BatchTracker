class Grant < ActiveRecord::Base
  attr_accessible :beg_year, :end_year, :notes, :project_id
  
  validates_presence_of :beg_year, :end_year
  
  belongs_to :project
  
end
