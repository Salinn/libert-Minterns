require 'test_helper'

class RsvpStatusesControllerTest < ActionController::TestCase
  setup do
    @rsvp_status = rsvp_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rsvp_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rsvp_status" do
    assert_difference('RsvpStatus.count') do
      post :create, rsvp_status: { rsvp_id: @rsvp_status.rsvp_id }
    end

    assert_redirected_to rsvp_status_path(assigns(:rsvp_status))
  end

  test "should show rsvp_status" do
    get :show, id: @rsvp_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rsvp_status
    assert_response :success
  end

  test "should update rsvp_status" do
    patch :update, id: @rsvp_status, rsvp_status: { rsvp_id: @rsvp_status.rsvp_id }
    assert_redirected_to rsvp_status_path(assigns(:rsvp_status))
  end

  test "should destroy rsvp_status" do
    assert_difference('RsvpStatus.count', -1) do
      delete :destroy, id: @rsvp_status
    end

    assert_redirected_to rsvp_statuses_path
  end
end
