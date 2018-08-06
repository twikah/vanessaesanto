module MainHelper
  # Returns the Gravatar for the given user.
  def gravatar_for(email, size:80)
    gravatar_id = Digest::MD5::hexdigest(email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{400}"
    image_tag(gravatar_url, class: "gravatar")
  end
end
