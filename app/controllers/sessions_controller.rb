class SessionsController < ApplicationController

  def create
    admin = Admin.authenticate(params[:session][:name],
                               params[:session][:password])
    if admin.nil?
      flash[:error] = "Invalid username or password."
      redirect_to admin_index_path
    else
      sign_in admin
      redirect_back_or admin_index_path
      flash[:success] = "You are signed in."
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
