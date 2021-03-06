class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update, :destroy]
  before_action :authorized

 # GET /projects
 def index
  @projects = Project.where user_id: @user.id

    render json: @projects.to_json(include: :resources)
  end

  # GET /projects/1
  def show
    render json: @project.to_json(include: :resources)
  end

  # POST /projects
  def create
    @project = Project.new(project_params)
    @project.user_id = @user.id

    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:name, :description, :instructions)
    end
end
