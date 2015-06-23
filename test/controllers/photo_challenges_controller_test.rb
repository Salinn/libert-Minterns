require 'test_helper'

class PhotoChallengesControllerTest < ActionController::TestCase
  setup do
    @photo_challenge = photo_challenges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_challenges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_challenge" do
    assert_difference('PhotoChallenge.count') do
      post :create, photo_challenge: { theme: @photo_challenge.theme, title: @photo_challenge.title, year_id: @photo_challenge.year_id }
    end

    assert_redirected_to photo_challenge_path(assigns(:photo_challenge))
  end

  test "should show photo_challenge" do
    get :show, id: @photo_challenge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @photo_challenge
    assert_response :success
  end

  test "should update photo_challenge" do
    patch :update, id: @photo_challenge, photo_challenge: { theme: @photo_challenge.theme, title: @photo_challenge.title, year_id: @photo_challenge.year_id }
    assert_redirected_to photo_challenge_path(assigns(:photo_challenge))
  end

  test "should destroy photo_challenge" do
    assert_difference('PhotoChallenge.count', -1) do
      delete :destroy, id: @photo_challenge
    end

    assert_redirected_to photo_challenges_path
  end
end
