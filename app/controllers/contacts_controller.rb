class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      AdminMailer.contact_form_submitted(@contact).deliver
      redirect_to contact_url, notice: "Thank you! Your message has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message."
      render 'main/contact'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end