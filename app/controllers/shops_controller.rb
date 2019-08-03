class ShopsController < ApplicationController
    before_action :set_shops, only: %i[show edit update destroy]


    def index 
         @shops = Shop.all
    end 

    def show
    end 

    def new
        @shop = flash[:shop] ? Shop.new(flash[:shop]): Shop.new 
        @shop.business_opening_hours.build
    end 

    def create
        @shop = Shop.new(shop_params)
        if @shop.save
            redirect_to root_path
        else
            redirect_to new_shop_path, alert: @shop.errors.full_messages
        end
    end 

    def edit
    end

    def update
        if @shop.update(shop_params)
            redirect_to root_path
        else 
            redirect_to root_path
        end  
    end

    def destroy
    end 
    
    private

    def set_shops
        @shop = Shop.find(params[:id])
    end

    def shop_params
        params.require(:shop).permit(:name, business_opening_hours_attributes: [:day, :opening_time, :closing_time, :break_starting_time, :break_finishing_time])
    end

end 

