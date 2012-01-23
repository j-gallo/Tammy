class PortfoliosController < ApplicationController

  def create
    @portfolio = Portfolio.create(params[:portfolio])
    if @portfolio.save
      flash[:success] = "Updated!"
      redirect_to work_path
    else
      render '/pages/work'
    end
  end

  def destroy
    Portfolio.find(params[:id]).destroy
    redirect_back_or work_path
  end
end
