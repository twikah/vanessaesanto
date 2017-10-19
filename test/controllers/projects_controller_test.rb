require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should render a project" do
    get project_url('1-website')
    assert_response :success
  end

  test '404s on missing project' do
    # TODO
  end
end
