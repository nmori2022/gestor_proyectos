class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def create
    @project = Project.create(
      name: params[:name],
      description: params[:description],
      start_date: params[:start_date],
      end_date: params[:end_date],
      state: params[:state].to_i
      
      #options_for_select(Project.states)
    )
  end
end
