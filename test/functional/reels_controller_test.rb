require 'test_helper'

class ReelsControllerTest < ActionController::TestCase
  setup do
    @reel = reels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reel" do
    assert_difference('Reel.count') do
      post :create, reel: { AverageDensityDuplicateNegative: @reel.AverageDensityDuplicateNegative, AverageDensityMaster: @reel.AverageDensityMaster, BoundVolumeFlag: @reel.BoundVolumeFlag, CaptureResolutionFilm: @reel.CaptureResolutionFilm, CaptureResolutionOriginal: @reel.CaptureResolutionOriginal, Comments: @reel.Comments, DateMicrofilmCreated: @reel.DateMicrofilmCreated, DensityReadingDuplicateNegative: @reel.DensityReadingDuplicateNegative, DensityReadingMaster: @reel.DensityReadingMaster, DigitalResponsibleInstitution: @reel.DigitalResponsibleInstitution, DigitalResponsibleInstitutionCode: @reel.DigitalResponsibleInstitutionCode, Dimensions: @reel.Dimensions, DminDuplicateNegative: @reel.DminDuplicateNegative, DminMaster: @reel.DminMaster, GuideToContentsPresentFlag: @reel.GuideToContentsPresentFlag, GuideToContentsString: @reel.GuideToContentsString, LooseLeavesFlag: @reel.LooseLeavesFlag, NoteToProcessor: @reel.NoteToProcessor, NumberResolutionTargets: @reel.NumberResolutionTargets, PagesPerIssue: @reel.PagesPerIssue, ResolutionCommentDuplicateNegative: @reel.ResolutionCommentDuplicateNegative, ResolutionCommentMaster: @reel.ResolutionCommentMaster, ResolutionOfDuplicateNegative: @reel.ResolutionOfDuplicateNegative, ResolutionOfMaster: @reel.ResolutionOfMaster, SourceRepository: @reel.SourceRepository, SourceRepositoryCode: @reel.SourceRepositoryCode, end_date: @reel.end_date, number: @reel.number, reduction_ratio: @reel.reduction_ratio, start_date: @reel.start_date }
    end

    assert_redirected_to reel_path(assigns(:reel))
  end

  test "should show reel" do
    get :show, id: @reel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reel
    assert_response :success
  end

  test "should update reel" do
    put :update, id: @reel, reel: { AverageDensityDuplicateNegative: @reel.AverageDensityDuplicateNegative, AverageDensityMaster: @reel.AverageDensityMaster, BoundVolumeFlag: @reel.BoundVolumeFlag, CaptureResolutionFilm: @reel.CaptureResolutionFilm, CaptureResolutionOriginal: @reel.CaptureResolutionOriginal, Comments: @reel.Comments, DateMicrofilmCreated: @reel.DateMicrofilmCreated, DensityReadingDuplicateNegative: @reel.DensityReadingDuplicateNegative, DensityReadingMaster: @reel.DensityReadingMaster, DigitalResponsibleInstitution: @reel.DigitalResponsibleInstitution, DigitalResponsibleInstitutionCode: @reel.DigitalResponsibleInstitutionCode, Dimensions: @reel.Dimensions, DminDuplicateNegative: @reel.DminDuplicateNegative, DminMaster: @reel.DminMaster, GuideToContentsPresentFlag: @reel.GuideToContentsPresentFlag, GuideToContentsString: @reel.GuideToContentsString, LooseLeavesFlag: @reel.LooseLeavesFlag, NoteToProcessor: @reel.NoteToProcessor, NumberResolutionTargets: @reel.NumberResolutionTargets, PagesPerIssue: @reel.PagesPerIssue, ResolutionCommentDuplicateNegative: @reel.ResolutionCommentDuplicateNegative, ResolutionCommentMaster: @reel.ResolutionCommentMaster, ResolutionOfDuplicateNegative: @reel.ResolutionOfDuplicateNegative, ResolutionOfMaster: @reel.ResolutionOfMaster, SourceRepository: @reel.SourceRepository, SourceRepositoryCode: @reel.SourceRepositoryCode, end_date: @reel.end_date, number: @reel.number, reduction_ratio: @reel.reduction_ratio, start_date: @reel.start_date }
    assert_redirected_to reel_path(assigns(:reel))
  end

  test "should destroy reel" do
    assert_difference('Reel.count', -1) do
      delete :destroy, id: @reel
    end

    assert_redirected_to reels_path
  end
end
