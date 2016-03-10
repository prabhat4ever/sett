require 'test_helper'

class SkillUserProfilesControllerTest < ActionController::TestCase
  setup do
    @skill_user_profile = skill_user_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_user_profiles)
  end

  test "should create skill_user_profile" do
    assert_difference('SkillUserProfile.count') do
      post :create, skill_user_profile: { skill_id: @skill_user_profile.skill_id, user_profile_id: @skill_user_profile.user_profile_id }
    end

    assert_response 201
  end

  test "should show skill_user_profile" do
    get :show, id: @skill_user_profile
    assert_response :success
  end

  test "should update skill_user_profile" do
    put :update, id: @skill_user_profile, skill_user_profile: { skill_id: @skill_user_profile.skill_id, user_profile_id: @skill_user_profile.user_profile_id }
    assert_response 204
  end

  test "should destroy skill_user_profile" do
    assert_difference('SkillUserProfile.count', -1) do
      delete :destroy, id: @skill_user_profile
    end

    assert_response 204
  end
end
