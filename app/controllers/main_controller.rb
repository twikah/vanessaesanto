class MainController < ApplicationController
  def index
  end

  def about
  end

  def contact
    @contact = Contact.new
  end

  def blog
  end
end
