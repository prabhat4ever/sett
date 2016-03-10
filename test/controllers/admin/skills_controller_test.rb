require 'test_helper'

class Admin::SkillsControllerTest < ActionController::TestCase
  setup do
    @admin_skill = admin_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_skills)
  end

  test "should create admin_skill" do
    assert_difference('Admin::Skill.count') do
      post :create, admin_skill: { desc: @admin_skill.desc, name: @admin_skill.name }
    end

    assert_response 201
  end

  test "should show admin_skill" do
    get :show, id: @admin_skill
    assert_response :success
  end

  test "should update admin_skill" do
    put :update, id: @admin_skill, admin_skill: { desc: @admin_skill.desc, name: @admin_skill.name }
    assert_response 204
  end

  test "should destroy admin_skill" do
    assert_difference('Admin::Skill.count', -1) do
      delete :destroy, id: @admin_skill
    end

    assert_response 204
  end
end
