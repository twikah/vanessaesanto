# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/admin_mailer/contact_form_submitted
  def contact_form_submitted
    AdminMailer.contact_form_submitted
  end

end
