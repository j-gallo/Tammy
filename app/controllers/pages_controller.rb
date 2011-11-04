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
    @title = "Disjointed Thoughts ion Life"
    @blog = Blog.paginate(:page => params[:page], :per_page => 10)
  end

  def dad
    @title = "Disjointed Dad"
  end
end
