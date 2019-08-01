class ShopsController < ApplicationController
    # before_action :set_shops, only: [edit]

    def new
        @shop = Shop.new 
        2.times {@shop.business_opening_hours.build }
    end 

    def create
        @shop = Shop.new(shop_params)
        if @shop.save
            redirect_to root_path
        else
            # add error soit alert / soit error message 
            render :new
        end
    end 
 
    private

    def shop_params
        params.require(:shop).permit(:name, business_opening_hours_attributes: [:day, :opening_time, :closing_time, :break_starting_time, :break_finishing_time])
    end
end 

