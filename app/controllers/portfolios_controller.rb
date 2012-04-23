class PortfoliosController < ApplicationController

  def index
    @new_portfolio = Portfolio.new
    params[:format] ||= Date.today.year
    @year = params[:format].to_i 
    @portfolio = Portfolio.find_all_by_year(@year) 
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
