class TagsController < ApplicationController
  def index
	  @tag  = Blog.find(params[:life_id]).tags
  end 

  def show
	  @tagged = Tag.find(params[:id]).blogs.paginate(:page => params[:page], :per_page => 10)
  end

  def new
	@tag = life_blog_tags_path(Blog.find(params[:life_id]))
  end

end

