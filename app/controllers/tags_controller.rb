class TagsController < ApplicationController
  def index
	  @title = "Delete Tags"
	  @tag  = Blog.find(params[:life_id]).tags
  end 

  def show
	  @title = Tag.find(params[:id]).title
	  @tagged = Tag.find(params[:id]).blogs.paginate(:page => params[:page], :per_page => 10)
  end

  def new
	@title = "New blog tag"
	@tag = life_blog_tags_path(Blog.find(params[:life_id]))
  end

end

