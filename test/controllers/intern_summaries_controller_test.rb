require 'test_helper'

class InternSummariesControllerTest < ActionController::TestCase
  setup do
    @intern_summary = intern_summaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intern_summaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create intern_summary" do
    assert_difference('InternSummary.count') do
      post :create, intern_summary: { content: @intern_summary.content, content: @intern_summary.content, title: @intern_summary.title, user_id: @intern_summary.user_id }
    end

    assert_redirected_to intern_summary_path(assigns(:intern_summary))
  end

  test "should show intern_summary" do
    get :show, id: @intern_summary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @intern_summary
    assert_response :success
  end

  test "should update intern_summary" do
    patch :update, id: @intern_summary, intern_summary: { content: @intern_summary.content, content: @intern_summary.content, title: @intern_summary.title, user_id: @intern_summary.user_id }
    assert_redirected_to intern_summary_path(assigns(:intern_summary))
  end

  test "should destroy intern_summary" do
    assert_difference('InternSummary.count', -1) do
      delete :destroy, id: @intern_summary
    end

    assert_redirected_to intern_summaries_path
  end
end
