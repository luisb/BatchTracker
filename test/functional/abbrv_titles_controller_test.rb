require 'test_helper'

class AbbrvTitlesControllerTest < ActionController::TestCase
  setup do
    @abbrv_title = abbrv_titles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abbrv_titles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abbrv_title" do
    assert_difference('AbbrvTitle.count') do
      post :create, abbrv_title: { name: @abbrv_title.name }
    end

    assert_redirected_to abbrv_title_path(assigns(:abbrv_title))
  end

  test "should show abbrv_title" do
    get :show, id: @abbrv_title
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abbrv_title
    assert_response :success
  end

  test "should update abbrv_title" do
    put :update, id: @abbrv_title, abbrv_title: { name: @abbrv_title.name }
    assert_redirected_to abbrv_title_path(assigns(:abbrv_title))
  end

  test "should destroy abbrv_title" do
    assert_difference('AbbrvTitle.count', -1) do
      delete :destroy, id: @abbrv_title
    end

    assert_redirected_to abbrv_titles_path
  end
end
