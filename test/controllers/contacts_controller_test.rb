require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get form" do
    get contact_url
    assert_response :success
  end

  #test "should send an email" do
  #  post contacts_url,
  #  assert_response :success
  #end

end
