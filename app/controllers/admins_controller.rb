class AdminsController < ApplicationController

  def blog
    @blog = Blog.new
  end

  def create
    @admin = Admin.create(params[:admin])
    @admin.save
  end

  def edit
	@admin = Admin.find(params[:id])
  end

  def update
	  @admin = Admin.find(params[:id])
	  if @admin.update_attributes(params[:admin])
		  flash[:success] = "Admin Updated."
		  redirect_to admin_index_path
	  else
		  render 'edit'
	  end
  end

  def show
  end

end
