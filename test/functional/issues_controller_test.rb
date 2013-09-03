require 'test_helper'

class IssuesControllerTest < ActionController::TestCase
  setup do
    @issue = issues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issue" do
    assert_difference('Issue.count') do
      post :create, issue: { date: @issue.date, date_printed: @issue.date_printed, duplicate_pages: @issue.duplicate_pages, edition_label: @issue.edition_label, edition_number: @issue.edition_number, missing_pages: @issue.missing_pages, notes: @issue.notes, num_pages: @issue.num_pages, num_sections: @issue.num_sections, number: @issue.number, phys_description: @issue.phys_description, present: @issue.present, volume: @issue.volume }
    end

    assert_redirected_to issue_path(assigns(:issue))
  end

  test "should show issue" do
    get :show, id: @issue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issue
    assert_response :success
  end

  test "should update issue" do
    put :update, id: @issue, issue: { date: @issue.date, date_printed: @issue.date_printed, duplicate_pages: @issue.duplicate_pages, edition_label: @issue.edition_label, edition_number: @issue.edition_number, missing_pages: @issue.missing_pages, notes: @issue.notes, num_pages: @issue.num_pages, num_sections: @issue.num_sections, number: @issue.number, phys_description: @issue.phys_description, present: @issue.present, volume: @issue.volume }
    assert_redirected_to issue_path(assigns(:issue))
  end

  test "should destroy issue" do
    assert_difference('Issue.count', -1) do
      delete :destroy, id: @issue
    end

    assert_redirected_to issues_path
  end
end
