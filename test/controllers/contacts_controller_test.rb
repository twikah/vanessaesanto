require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get form" do
    get contacts_form_url
    assert_response :success
  end

  test "should get create" do
    get contacts_create_url
    assert_response :success
  end

end
