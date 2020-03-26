class ProjectsController < ApplicationController
  PROJECTS = [{
                id: '1-website',
                name: 'This Website',
                description: 'Find out what led me to start my website and how
                              did I do it.'
              },
              {
                id: '2-mls',
                name: 'MLS Website',
                description: 'See the very first website I made professionally,
                              what challenges it brought me and how I overcame
                              them.'
              },
              {
                id: '3-booking',
                name: 'Booking Platform',
                description: 'I developed a booking and invoicing platform as
                              part of MLS website\'s back-office.'
              },
              {
                id: '4-secret-sessions',
                name: 'Secret Sessions',
                description: 'Secret Sessions is a marketplace for promoting
                              movie screenings in secret and special locations.'
              },
              {
                id: '5-outflix',
                name: 'Outflix',
                description: 'Outflix integrates with an unofficial Netflix API
                              to track and show expiring content.'
              }]

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
