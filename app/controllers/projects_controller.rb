class ProjectsController < ApplicationController
  PROJECTS = [{id: "1-website", name: "This Website"}]

  def index
    @projects = PROJECTS
  end

  def show
    @project = PROJECTS.find { |project| project[:id] == params[:id] }

    if @project.nil?
      return render plain: "Ooops! We couldn't find that project!", status: 404
    end
  end
end
