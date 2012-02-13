class PortfoliosController < ApplicationController

  def index
    @title = "Disjointed Body of Work"
    @new_portfolio = Portfolio.new
    @portfolio = Portfolio.all
  end

  def create
    @portfolio = Portfolio.all
    @new_portfolio = Portfolio.create(params[:portfolio])
    if @new_portfolio.save
      flash[:success] = "Updated!"
      redirect_to portfolios_path
    else
      render 'portfolios/index'
    end
  end

  def destroy
    Portfolio.find(params[:id]).destroy
    redirect_to portfolios_path
  end
end
