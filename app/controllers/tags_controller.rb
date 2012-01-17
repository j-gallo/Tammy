class TagsController < ApplicationController
  def index
	  @title = "Add a tag"
	  @tag = Tag.all
  end

  def show
	  @title = Tag.find(params[:id]).title
	  @tag = Tag.find(params[:id]).blogs
  end

  def create
    @tag = Tag.new
    @tag.title = params[:title]
    if @tag.save
	flash[:success] = "Tag added!!"
	redirect_to life_tags_path(Blog.find(params[:life_id]))
    else
	redirect_to life_tags_path(Blog.find(params[:life_id]))
    end
  end

  def new
	@title = "New blog tag"
	@tag = life_blog_tags_path(Blog.find(params[:life_id]))
  end

  def destroy
  end
end

