class Grant < ActiveRecord::Base
  attr_accessible :beg_year, :end_year, :notes, :project_id
  
  validates_presence_of :beg_year, :end_year
  
  belongs_to :project
  has_many :batches
  
  # Concatenate Project, Beg, End Years for display purposes
  def display
    "#{self.project.name} #{self.beg_year}-#{self.end_year}"
  end
end
