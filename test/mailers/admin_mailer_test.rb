require 'test_helper'

class AdminMailerTest < ActionMailer::TestCase
  test "contact_form_submitted" do
    mail = AdminMailer.contact_form_submitted
    assert_equal "Contact form submitted", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
