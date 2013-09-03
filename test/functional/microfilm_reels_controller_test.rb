require 'test_helper'

class MicrofilmReelsControllerTest < ActionController::TestCase
  setup do
    @microfilm_reel = microfilm_reels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microfilm_reels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microfilm_reel" do
    assert_difference('MicrofilmReel.count') do
      post :create, microfilm_reel: { date_film_returned: @microfilm_reel.date_film_returned, date_shipped_lc: @microfilm_reel.date_shipped_lc, date_shipped_rescan: @microfilm_reel.date_shipped_rescan, date_shipped_scan: @microfilm_reel.date_shipped_scan, date_tiffs_shipped_ucr: @microfilm_reel.date_tiffs_shipped_ucr, rescan_tracking_number: @microfilm_reel.rescan_tracking_number, shelved_at_ucb: @microfilm_reel.shelved_at_ucb, tracking_number: @microfilm_reel.tracking_number, vendor_project_id: @microfilm_reel.vendor_project_id }
    end

    assert_redirected_to microfilm_reel_path(assigns(:microfilm_reel))
  end

  test "should show microfilm_reel" do
    get :show, id: @microfilm_reel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microfilm_reel
    assert_response :success
  end

  test "should update microfilm_reel" do
    put :update, id: @microfilm_reel, microfilm_reel: { date_film_returned: @microfilm_reel.date_film_returned, date_shipped_lc: @microfilm_reel.date_shipped_lc, date_shipped_rescan: @microfilm_reel.date_shipped_rescan, date_shipped_scan: @microfilm_reel.date_shipped_scan, date_tiffs_shipped_ucr: @microfilm_reel.date_tiffs_shipped_ucr, rescan_tracking_number: @microfilm_reel.rescan_tracking_number, shelved_at_ucb: @microfilm_reel.shelved_at_ucb, tracking_number: @microfilm_reel.tracking_number, vendor_project_id: @microfilm_reel.vendor_project_id }
    assert_redirected_to microfilm_reel_path(assigns(:microfilm_reel))
  end

  test "should destroy microfilm_reel" do
    assert_difference('MicrofilmReel.count', -1) do
      delete :destroy, id: @microfilm_reel
    end

    assert_redirected_to microfilm_reels_path
  end
end
