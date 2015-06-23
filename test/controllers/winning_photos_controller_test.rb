require 'test_helper'

class WinningPhotosControllerTest < ActionController::TestCase
  setup do
    @winning_photo = winning_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:winning_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create winning_photo" do
    assert_difference('WinningPhoto.count') do
      post :create, winning_photo: { photo_challenge_id: @winning_photo.photo_challenge_id, reason: @winning_photo.reason }
    end

    assert_redirected_to winning_photo_path(assigns(:winning_photo))
  end

  test "should show winning_photo" do
    get :show, id: @winning_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @winning_photo
    assert_response :success
  end

  test "should update winning_photo" do
    patch :update, id: @winning_photo, winning_photo: { photo_challenge_id: @winning_photo.photo_challenge_id, reason: @winning_photo.reason }
    assert_redirected_to winning_photo_path(assigns(:winning_photo))
  end

  test "should destroy winning_photo" do
    assert_difference('WinningPhoto.count', -1) do
      delete :destroy, id: @winning_photo
    end

    assert_redirected_to winning_photos_path
  end
end
