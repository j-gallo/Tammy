class TaggingsController < ApplicationController

  def index
	  @title = "Delete Tags"
	  @tagging  = Blog.find(params[:life_id]).taggings
  end 

## Creates a new tag if the desired tag does not exsist. Otherwise, a new 
## relationship is created between the blog and the desired tag.
  def create
	@tagging = Tagging.new
	@tagging.blog_id = params[:life_id]
	Tagging.transaction do
		@tag = Tag.find_or_create_by_title(params[:title])
		@tagging.tag_id = @tag.id
		@tagging.title = params[:title]
	end
    if @tagging.save
	redirect_to life_index_path(Blog.find(params[:life_id]))
    else
	redirect_to life_index_path(Blog.find(params[:life_id]))
    end
  end

  def new
	@tag = Tagging.create
  end

  def destroy
	t = Tagging.find(params[:id])
		  if (t.tag.taggings.count == 1)
			  t.tag.destroy
		  end
	t.destroy
	flash[:sucess] = "Tag deleted."
	redirect_to life_taggings_path
  end

end

