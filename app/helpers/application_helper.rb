module ApplicationHelper

  def title
    base_title = "Disjointed Thoughts by Tammy Portnoy"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

end
