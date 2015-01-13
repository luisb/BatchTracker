require 'test_helper'

class BatchesControllerTest < ActionController::TestCase
  setup do
    @batch = batches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:batches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create batch" do
    assert_difference('Batch.count') do
      post :create, batch: { LC_approve: @batch.LC_approve, corrections_needed: @batch.corrections_needed, date_ucr_recvd: @batch.date_ucr_recvd, date_UCR_LC: @batch.date_UCR_LC, date_beg_qc: @batch.date_beg_qc, ingested: @batch.ingested, name: @batch.name, name_short: @batch.name_short, notes: @batch.notes, passed_validation: @batch.passed_validation, server_location: @batch.server_location, size: @batch.size, valid_issues: @batch.valid_issues, valid_reels: @batch.valid_reels }
    end

    assert_redirected_to batch_path(assigns(:batch))
  end

  test "should show batch" do
    get :show, id: @batch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @batch
    assert_response :success
  end

  test "should update batch" do
    put :update, id: @batch, batch: { LC_approve: @batch.LC_approve, corrections_needed: @batch.corrections_needed, date_ucr_recvd: @batch.date_ucr_recvd, date_UCR_LC: @batch.date_UCR_LC, date_beg_qc: @batch.date_beg_qc, ingested: @batch.ingested, name: @batch.name, name_short: @batch.name_short, notes: @batch.notes, passed_validation: @batch.passed_validation, server_location: @batch.server_location, size: @batch.size, valid_issues: @batch.valid_issues, valid_reels: @batch.valid_reels }
    assert_redirected_to batch_path(assigns(:batch))
  end

  test "should destroy batch" do
    assert_difference('Batch.count', -1) do
      delete :destroy, id: @batch
    end

    assert_redirected_to batches_path
  end
end
