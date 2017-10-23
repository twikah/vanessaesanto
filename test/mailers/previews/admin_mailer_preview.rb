# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/admin_mailer/contact_form_submitted
  def contact_form_submitted
    contact = {name: "V Tester", email: "vanessaesanto@example.com", content: "A test message."}
    AdminMailer.contact_form_submitted(contact)
  end

end
