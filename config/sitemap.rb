require 'fog-aws'

# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://vanessaesanto.com"
SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'
SitemapGenerator::Sitemap.ping_search_engines('https://vanessaesanto.com')
SitemapGenerator::Sitemap.public_path = 'tmp/'
SitemapGenerator::Sitemap.sitemaps_host = "https://vanessaesanto.com"

SitemapGenerator::Sitemap.create do
  add root_path, :changefreq => 'never', :priority => 0.75
  add about_path, :changefreq => 'monthly', :priority => 0.3
  add projects_path, :changefreq => 'weekly', :priority => 0.5

  ProjectsController::PROJECTS.each do |project|
    add project_path(project[:id]), :changefreq => 'weekly', :priority => 0.5
  end

  add contact_path, :changefreq => 'yearly', :priority => 0.3
  add blog_path, :changefreq => 'weekly', :priority => 0.5

  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end

SitemapGenerator::Sitemap.ping_search_engines
