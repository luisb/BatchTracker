class Reel < ActiveRecord::Base
  attr_accessible :AverageDensityDuplicateNegative, :AverageDensityMaster, :BoundVolumeFlag, :CaptureResolutionFilm, :CaptureResolutionOriginal, :Comments, :DateMicrofilmCreated, :DensityReadingDuplicateNegative, :DensityReadingMaster, :DigitalResponsibleInstitution, :DigitalResponsibleInstitutionCode, :Dimensions, :DminDuplicateNegative, :DminMaster, :GuideToContentsPresentFlag, :GuideToContentsString, :LooseLeavesFlag, :NoteToProcessor, :NumberResolutionTargets, :PagesPerIssue, :ResolutionCommentDuplicateNegative, :ResolutionCommentMaster, :ResolutionOfDuplicateNegative, :ResolutionOfMaster, :SourceRepository, :SourceRepositoryCode, :end_date, :number, :reduction_ratio, :start_date, :batch_id
  
  belongs_to :batch
  
  validates_presence_of :batch_id, :number, :start_date, :end_date
end
