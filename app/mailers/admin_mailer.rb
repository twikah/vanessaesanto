class AdminMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_mailer.contact_form_submitted.subject
  #
  def contact_form_submitted(contact)
    @contact = contact
    mail to: "vanessaesanto@gmail.com", subject: "New contact form submitted by #{contact.name}"
  end
end
