class PagesController < ApplicationController

  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def portfolio
    @title = "Disjointed Body of Work"
  end

  def blog
    @title = "Disjointed Thoughts on Life"
    @blog = Blog.new
  end

  def dad
    @title = "Disjointed Dad"
  end
end
