class TaggingsController < ApplicationController

  def index
	  @title = "Add a tag"
	  @tagging = life_taggings_path(Blog.find(params[:life_id]))
  end

  def create
	@tagging = Tagging.new
	@tagging.blog_id = params[:life_id]
	Tagging.transaction do
		@tag = Tag.find_or_create_by_title(params[:title])
		@tagging.tag_id = @tag.id
		@tagging.title = params[:title]
	end
    if @tagging.save
	flash[:success] = "Tag added!!"
	redirect_to life_taggings_path(Blog.find(params[:life_id]))
    else
	redirect_to life_taggings_path(Blog.find(params[:life_id]))
    end
  end

  def new
	@tag = Tagging.create
  end

  def destroy
  end
end

