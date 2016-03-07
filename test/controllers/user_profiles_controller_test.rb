require 'test_helper'

class UserProfilesControllerTest < ActionController::TestCase
  setup do
    @user_profile = user_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_profiles)
  end

  test "should create user_profile" do
    assert_difference('UserProfile.count') do
      post :create, user_profile: { bas_location: @user_profile.bas_location, is_fte: @user_profile.is_fte, name: @user_profile.name }
    end

    assert_response 201
  end

  test "should show user_profile" do
    get :show, id: @user_profile
    assert_response :success
  end

  test "should update user_profile" do
    put :update, id: @user_profile, user_profile: { bas_location: @user_profile.bas_location, is_fte: @user_profile.is_fte, name: @user_profile.name }
    assert_response 204
  end

  test "should destroy user_profile" do
    assert_difference('UserProfile.count', -1) do
      delete :destroy, id: @user_profile
    end

    assert_response 204
  end
end
