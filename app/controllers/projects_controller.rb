class ProjectsController < ApplicationController
  PROJECTS = [{id: "1-website", name: "This Website", description: "Find out what led me to start my website and how did I do it."}]

  def index
    @projects = PROJECTS
    @placeholder_count = @projects.size % 3 > 0 ? 3 - (@projects.size % 3) : 0
  end

  def show
    @project = PROJECTS.find { |project| project[:id] == params[:id] }

    if @project.nil?
      return render plain: "Ooops! We couldn't find that project!", status: 404
    end
  end
end
