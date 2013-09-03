class CreateReels < ActiveRecord::Migration
  def change
    create_table :reels do |t|
      t.string :number
      t.date :start_date
      t.date :end_date
      t.string :reduction_ratio
      t.string :CaptureResolutionOriginal
      t.string :CaptureResolutionFilm
      t.boolean :GuideToContentsPresentFlag
      t.string :GuideToContentsString
      t.date :DateMicrofilmCreated
      t.boolean :LooseLeavesFlag
      t.boolean :BoundVolumeFlag
      t.text :Comments
      t.string :Dimensions
      t.number :PagesPerIssue
      t.integer :NumberResolutionTargets
      t.string :ResolutionOfMaster
      t.string :ResolutionCommentMaster
      t.string :DensityReadingMaster
      t.string :AverageDensityMaster
      t.string :DminMaster
      t.string :ResolutionOfDuplicateNegative
      t.string :ResolutionCommentDuplicateNegative
      t.string :DensityReadingDuplicateNegative
      t.string :AverageDensityDuplicateNegative
      t.string :DminDuplicateNegative
      t.string :DigitalResponsibleInstitution
      t.string :DigitalResponsibleInstitutionCode
      t.string :SourceRepository
      t.string :SourceRepositoryCode
      t.text :NoteToProcessor

      t.timestamps
    end
  end
end
