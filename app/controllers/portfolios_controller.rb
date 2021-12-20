class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @params = params.require(:portfolio).permit(:title, :subtitle, :body)
    @portfolio_item = Portfolio.new(@params)

    respond_to do |format|
        if @portfolio_item.save
            format.html { redirect_to portfolios_path, notice: "Portfolio item #{@portfolio_item.title} has been created successfully." }
        else
            format.html { render :new }
        end
    end
  end
end
