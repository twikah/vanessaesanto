class MainController < ApplicationController
  def sitemap
    redirect_to 'https://therailstutorial-sampleapp.s3.amazonaws.com/sitemaps/sitemap.xml.gz'
  end

  def index
  end

  def download_cv
    send_file(
      "#{Rails.root}/public/ves_resume_site.pdf",
      filename: "ves_resume_site.pdf",
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
