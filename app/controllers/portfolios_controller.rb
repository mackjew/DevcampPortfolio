class PortfoliosController < ApplicationController
    before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
    layout("portfolio")
    access( all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all)

    def index
        @portfolio_items = Portfolio.by_position
        #Portfolio.all
    end

    def angular
        @angular_portfolio_items = Portfolio.angular()
    end

    def new
        @portfolio_item = Portfolio.new
        3.times { @portfolio_item.technologies.build }
    end

    def create
        @portfolio_item = Portfolio.new(portfolio_params)

        respond_to do |format|
            logger.info(@portfolios_path)
            if @portfolio_item.save
                format.html { redirect_to portfolios_path, notice: "portfolio_item was successfully created." }
                format.json { render :show, status: :created, location: @portfolio_item }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
          end
        end
    end

    def edit
        3.times { @portfolio_item.technologies.build }
    end

    def update
        respond_to do |format|
          if @portfolio_item.update(portfolio_params)
            format.html { redirect_to(portfolios_path, notice: "The record was successfully updated.") }
            format.json { render :show, status: :ok, location: @portfolio }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @portfolio.errors, status: :unprocessable_entity }
          end
        end
    end

    def update_position
        @portfolio_item = Portfolio.find(params[:id])
        @portfolio_item.insert_at(portfolio_params[:position].to_i)
    end

    def show
        # 3.times { @portfolio_item.technologies.build }
    end

    def destroy
        #performs the destroy/delete the record
        @portfolio_item.destroy
        respond_to do |format|
          format.html { redirect_to portfolios_url, notice: "Portfolio record was successfully removed." }
        end
    end

    private
    def portfolio_params
        params.require(:portfolio).permit(:title, 
                                        :subtitle, 
                                        :body, 
                                        :position,
                                        :main_image,
                                        :thumb_image,
                                        technologies_attributes: [:name]
                                    )
    end

    def set_portfolio_item
        # performs the lookup
        @portfolio_item = Portfolio.find(params[:id]) 
    end

end
