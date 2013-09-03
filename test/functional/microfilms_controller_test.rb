require 'test_helper'

class MicrofilmsControllerTest < ActionController::TestCase
  setup do
    @microfilm = microfilms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microfilms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microfilm" do
    assert_difference('Microfilm.count') do
      post :create, microfilm: { date_film_returned: @microfilm.date_film_returned, date_shipped_lc: @microfilm.date_shipped_lc, date_shipped_rescan: @microfilm.date_shipped_rescan, date_shipped_scan: @microfilm.date_shipped_scan, date_tiffs_shipped_ucr: @microfilm.date_tiffs_shipped_ucr, rescan_tracking_number: @microfilm.rescan_tracking_number, shelved_at_ucb: @microfilm.shelved_at_ucb, tracking_number: @microfilm.tracking_number, vendor_project_id: @microfilm.vendor_project_id }
    end

    assert_redirected_to microfilm_path(assigns(:microfilm))
  end

  test "should show microfilm" do
    get :show, id: @microfilm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microfilm
    assert_response :success
  end

  test "should update microfilm" do
    put :update, id: @microfilm, microfilm: { date_film_returned: @microfilm.date_film_returned, date_shipped_lc: @microfilm.date_shipped_lc, date_shipped_rescan: @microfilm.date_shipped_rescan, date_shipped_scan: @microfilm.date_shipped_scan, date_tiffs_shipped_ucr: @microfilm.date_tiffs_shipped_ucr, rescan_tracking_number: @microfilm.rescan_tracking_number, shelved_at_ucb: @microfilm.shelved_at_ucb, tracking_number: @microfilm.tracking_number, vendor_project_id: @microfilm.vendor_project_id }
    assert_redirected_to microfilm_path(assigns(:microfilm))
  end

  test "should destroy microfilm" do
    assert_difference('Microfilm.count', -1) do
      delete :destroy, id: @microfilm
    end

    assert_redirected_to microfilms_path
  end
end
