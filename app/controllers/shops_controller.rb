class ShopsController < ApplicationController
    # before_action :set_shops, only: [edit]

    def new
        @shop = Shop.new 
    end 

    def create
        @shop = Shop.new(shop_params)
        if @shop.save
            redirect_to root_path
        else
            flash.now[:alert] = flash_alerts
            render_error
        end
    end 

    # def edit
    # end 

    # def update
    # end 

    private

    # def set_shops
    #     @shop = Shop.find(params[:id])
    # end 

    def shop_params
        params.require(:shop).permit(:name)
    end 

end 
