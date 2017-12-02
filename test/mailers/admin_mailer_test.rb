require 'test_helper'

class AdminMailerTest < ActionMailer::TestCase
  test "contact_form_submitted" do
    contact = {name: "V Tester", email: "vanessaesanto@example.com", content: "A test message."}
    mail = AdminMailer.contact_form_submitted(contact)
    assert_equal "New contact form submitted by #{contact[:name]}", mail.subject
    assert_equal ["vanessaesanto@gmail.com"], mail.to
    assert_equal ["contact@vanessaesanto.com"], mail.from
    assert_equal "vanessaesanto@example.com", contact[:email]
    assert_match "A test message.", mail.body.encoded
  end
end
