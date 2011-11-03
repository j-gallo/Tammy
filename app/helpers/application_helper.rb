module ApplicationHelper

  def display_content_with_links(tweet)
    tweet.content.gsub(/(http:\/\/[a-zA-Z0-9\/\.\+\-_:?&=]+)/) {|a| "<a href=\"#{a}\">#{a}</a>"}
  end

  def title
    base_title = "Disjointed Thoughts by Tammy Portnoy"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

end
