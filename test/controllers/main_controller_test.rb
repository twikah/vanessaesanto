require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Vanessa Espirito Santo"
  end

  test "should get index" do
    get root_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get blog" do
    get blog_url
    assert_response :success
    assert_select "title", "Blog | #{@base_title}"
  end
end