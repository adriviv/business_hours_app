# frozen_string_literal: true

class ShopsController < ApplicationController
  before_action :set_shops, only: %i[show edit update]



  def index
    @shops = Shop.all.decorate
    @ordered_weekdays = @shops.map { |shop| order_weekday_service.order_weekdays(shop.business_opening_hours) }
  end

  def show
    # function from app/services
    @ordered_weekday = order_weekday_service.order_weekdays(@shop.business_opening_hours)
  end

  def new
    @shop = Shop.new
    @shop.business_opening_hours.build
    @weekdays = Date::DAYNAMES[0..6] # insert days into an instance variable to minimize ruby code in Front
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to @shop
    else
      flash[:alert] = t('An error occurred when you submitted the form, please check the validity of the information you entered.')
      redirect_to new_shop_path
    end
  end

  private

  def set_shops
    @shop = ShopDecorator.find(params[:id]).decorate

    # @shop = Shop.find(params[:id]).decorate
  end

  def shop_params
    params.require(:shop).permit(:name, business_opening_hours_attributes: %i[
                                   day
                                   opening_time
                                   closing_time
                                   break_starting_time
                                   break_finishing_time
                                 ])
  end

  def order_weekday_service
    OrderWeekdayService.new   # Use Services to maintain skinny controller code

  end
end
