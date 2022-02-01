class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [ :edit, :update, :show ]

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

  def edit
  end

  def update
    @params = params.require(:portfolio).permit(:title, :subtitle, :body)
    @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(@params)
        format.html { redirect_to portfolio_path(@portfolio_item[:id]), notice: "#{@portfolio_item.title} was successfully updated." }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  private
    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end
end
