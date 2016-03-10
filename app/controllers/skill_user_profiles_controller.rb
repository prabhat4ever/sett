class SkillUserProfilesController < ApplicationController
  before_action :set_skill_user_profile, only: [:show, :update, :destroy]

  # GET /skill_user_profiles
  # GET /skill_user_profiles.json
  def index
    @skill_user_profiles = SkillUserProfile.all

    render json: @skill_user_profiles
  end

  # GET /skill_user_profiles/1
  # GET /skill_user_profiles/1.json
  def show
    render json: @skill_user_profile
  end

  # POST /skill_user_profiles
  # POST /skill_user_profiles.json
  def create
    byebug
    @skill_user_profile = SkillUserProfile.new(skill_user_profile_params)

    if @skill_user_profile.save
      render json: @skill_user_profile, status: :created, location: @skill_user_profile
    else
      render json: @skill_user_profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skill_user_profiles/1
  # PATCH/PUT /skill_user_profiles/1.json
  def update
    @skill_user_profile = SkillUserProfile.find(params[:id])

    if @skill_user_profile.update(skill_user_profile_params)
      head :no_content
    else
      render json: @skill_user_profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skill_user_profiles/1
  # DELETE /skill_user_profiles/1.json
  def destroy
    @skill_user_profile.destroy

    head :no_content
  end

  private

    def set_skill_user_profile
      @skill_user_profile = SkillUserProfile.find(params[:id])
    end

    def skill_user_profile_params
      params.require(:skill_user_profile).permit(:user_profile_id, :skill_id)
    end
end
