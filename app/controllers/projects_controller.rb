class ProjectsController < ApplicationController
  @@projects = [{id: "1-website", name: "This Website"}]

  def index
    @projects = @@projects
  end

  def show
    @project = @@projects.find { |project| project[:id] == params[:id] }

    if @project.nil?
      return render plain: "Ooops! We couldn't find that project!", status: 404
    end
  end
end
