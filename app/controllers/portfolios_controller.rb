class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
    # sets portfolio_item to the Portfolio with the id provided in the URL
    # http://localhost:3000/portfolios/2/edit
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image))
        format.html { redirect_to portfolios_path, notice: "Record updated" }
      else
        format.html { render :edit }
      end
    end
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image))

    respond_to do |format|
      if @portfolio_item.save
        # Sends the user to the index page -> /portfolios => portfolios#index
        format.html { redirect_to portfolios_path, notice: "Your portfolio has been created "}
      else
        format.html {render :new }
      end
    end
  end
end
