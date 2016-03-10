class UserProfilesController < ApplicationController
  before_action :set_user_profile, only: [:show, :update, :destroy]

  # GET /user_profiles
  # GET /user_profiles.json
  def index
    @user_profiles = UserProfile.all
    byebug

    render json: @user_profiles
  end

  # GET /user_profiles/1
  # GET /user_profiles/1.json
  def show
    @user_profile = UserProfile.find(params[:id])
    render json: @user_profile
  end

  # POST /user_profiles
  # POST /user_profiles.json
  def create
    @user_profile = UserProfile.new(user_profile_params)

    if @user_profile.save
      render json: @user_profile, status: :created, location: @user_profile
    else
      render json: @user_profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_profiles/1
  # PATCH/PUT /user_profiles/1.json
  def update
    @user_profile = UserProfile.find(params[:id])

    if @user_profile.update(user_profile_params)
      head :no_content
    else
      render json: @user_profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_profiles/1
  # DELETE /user_profiles/1.json
  def destroy
    @user_profile.destroy

    head :no_content
  end

  private

    def set_user_profile
      @user_profile = UserProfile.find(params[:id])
    end

    def user_profile_params
      params.require(:user_profile).permit(:name, :bas_location, :is_fte)
    end
end
