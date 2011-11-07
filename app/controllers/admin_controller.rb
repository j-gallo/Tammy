class AdminController < ApplicationController

  def admin
    @title = "Admin"
  end

  def blog
    @title = "Blog"
    @blog = Blog.new
  end

  def create
    @admin = Admin.new(params[:admin])
    @admin.save
  end

  def show
    @title = Admin.name
  end

end
