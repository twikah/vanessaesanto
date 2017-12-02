require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Vanessa Espirito Santo"
  end

  test "should get project index" do
    get projects_url
    assert_response :success
    assert_select "title", "Projects | #{@base_title}"
  end

  test "should render a project" do
    get project_url('1-website')
    assert_response :success
  end

  test '404s on missing project' do
    get project_url('inexistent')
    assert_match "Ooops! We couldn't find that project!", response.body
  end
end
