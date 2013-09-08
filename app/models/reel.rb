class Reel < ActiveRecord::Base
  attr_accessible :AverageDensityDuplicateNegative, :AverageDensityMaster, :BoundVolumeFlag, :CaptureResolutionFilm, :CaptureResolutionOriginal, :Comments, :DateMicrofilmCreated, :DensityReadingDuplicateNegative, :DensityReadingMaster, :DigitalResponsibleInstitution, :DigitalResponsibleInstitutionCode, :Dimensions, :DminDuplicateNegative, :DminMaster, :GuideToContentsPresentFlag, :GuideToContentsString, :LooseLeavesFlag, :NoteToProcessor, :NumberResolutionTargets, :PagesPerIssue, :ResolutionCommentDuplicateNegative, :ResolutionCommentMaster, :ResolutionOfDuplicateNegative, :ResolutionOfMaster, :SourceRepository, :SourceRepositoryCode, :end_date, :number, :reduction_ratio, :start_date, :batch_id
  
  belongs_to :batch
  
  before_save :pad_number
  
  validates_presence_of :batch_id, :number, :start_date, :end_date
  
  private
  
  # Pad Reel Number appropriately; sometimes there's an [A-Z] after.
  # IF an LSTA batch, the numerical part should be padded to 11 chars; [A-Z] means 12 char reel reel number
  # IF an NDNP batch, the entire reel number, alpha char or not, is padded to 11 chars.
  # Modifies user input
  
  def pad_number
    
    num_pad = 11
    
    Batch.find(self.batch_id).grant.project.name == "LSTA" ? num_pad_w_alpha = num_pad + 1 : num_pad_w_alpha = num_pad
    
    self.number = self.number.rindex(/[A-Za-z]/) ? self.number.rjust(num_pad_w_alpha,'0').upcase : self.number.rjust(num_pad,'0')
  end
end
