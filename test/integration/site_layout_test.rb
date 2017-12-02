require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'main/index'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", projects_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", blog_path
  end

  test "project page links" do
    get projects_path
    ProjectsController::PROJECTS.each do |project|
      assert_select "a[href=?]", project_path(project[:id])
    end
  end
end
