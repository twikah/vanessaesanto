class MainController < ApplicationController
  def sitemap
    redirect_to 'https://therailstutorial-sampleapp.s3.amazonaws.com/sitemaps/sitemap.xml.gz'
  end

  def index
  end

  def download_cv
    send_file(
      "#{Rails.root}/public/ves_cv_2020.pdf",
      filename: "ves_cv_2020.pdf",
      type: "application/pdf"
    )
  end

  def about
  end

  def contact
    @contact = Contact.new
  end

  def blog
  end
end
