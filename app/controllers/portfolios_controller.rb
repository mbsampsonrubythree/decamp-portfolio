class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
  layout "portfolio"
  def index
    @portfolio_items = Portfolio.all
  end

  def angular
    @angular_items = Portfolio.angular
  end

  def show
  end


  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def edit
    # sets portfolio_item to the Portfolio with the id provided in the URL
    # http://localhost:3000/portfolios/2/edit
  end

  def destroy
    # Store the item to destroy

    @portfolio_item.destroy
    # Destroy/delete the record

    # Redirect to portfolios#index
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Portfolio was destroyed." }
    end
  end


  def update

    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: "Record updated" }
      else
        format.html { render :edit }
      end
    end
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        # Sends the user to the index page -> /portfolios => portfolios#index
        format.html { redirect_to portfolios_path, notice: "Your portfolio has been created "}
      else
        format.html {render :new }
      end
    end
  end

  private

    def portfolio_params
      params.require(:portfolio).permit(
        :title,
        :subtitle,
        :body,
        :main_image,
        :thumb_image,
        technologies_attributes: [:name]
      )
    end

    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end

end
