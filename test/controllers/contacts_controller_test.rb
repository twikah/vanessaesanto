require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  def setup
    ActionMailer::Base.deliveries.clear
  end

  test "should get form" do
    get contact_url
    assert_response :success
  end

  test "should send an email" do
    post contacts_url, params: { contact: { name: "V Tester", email: "vanessaesanto@example.com", content: "A test message."} }
    assert_equal 1, ActionMailer::Base.deliveries.size
    assert_redirected_to contact_url
    follow_redirect!
    assert_select "div.alert.alert-notice", text: "Thank you! Your message has been sent."
  end

  test "should not send an email with invalid submission" do
    post contacts_url, params: { contact: { name: "", email: "email", content: ""} }
    assert_equal 0, ActionMailer::Base.deliveries.size
    assert_template 'main/contact'
    assert_select "div.alert.alert-alert", text: "An error occurred while delivering this message."
  end
end
