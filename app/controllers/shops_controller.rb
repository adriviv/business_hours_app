class ShopsController < ApplicationController
    # before_action :set_shops, only: [edit]

    def new
        @shop = Shop.new 
    end 

    # def create
    # end 

    # def edit
    # end 

    # def update
    # end 

    private

    # def set_shops
    #     @shop = Shop.find(params[:id])
    # end 

    # def shop_params
    #     params.require(:shop).permit(:name)
    # end 

end 
