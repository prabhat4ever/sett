class Admin::SkillsController < ApplicationController
  before_action :set_admin_skill, only: [:show, :update, :destroy]

  # GET /admin/skills
  # GET /admin/skills.json
  def index
    @admin_skills = Admin::Skill.all

    render json: @admin_skills
  end

  # GET /admin/skills/1
  # GET /admin/skills/1.json
  def show
    render json: @admin_skill
  end

  # POST /admin/skills
  # POST /admin/skills.json
  def create
    byebug
    @admin_skill = Admin::Skill.new(admin_skill_params)

    if @admin_skill.save
      render json: @admin_skill, status: :created, location: @admin_skill
    else
      render json: @admin_skill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /admin/skills/1
  # PATCH/PUT /admin/skills/1.json
  def update
    @admin_skill = Admin::Skill.find(params[:id])

    if @admin_skill.update(admin_skill_params)
      head :no_content
    else
      render json: @admin_skill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /admin/skills/1
  # DELETE /admin/skills/1.json
  def destroy
    @admin_skill.destroy

    head :no_content
  end

  private

    def set_admin_skill
      @admin_skill = Admin::Skill.find(params[:id])
    end

    def admin_skill_params
      params.require(:admin_skill).permit(:name, :desc)
    end
end
