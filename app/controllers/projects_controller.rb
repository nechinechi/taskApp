class ProjectsController < ApplicationController

before_action :set_name, only: [:show, :edit, :update, :destroy]
# after_action も存在

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    project = Project.new(project_params)
    if project.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to projects_path
    else
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private
  def project_params
    params[:project].permit(:title)
  end

  private
  def set_name
    @project = Project.find(params[:id])
  end

end
