# frozen_string_literal: true

class ShopsController < ApplicationController
  before_action :set_shops, only: %i[show edit update]

  def index
    @shops = Shop.all
  end

  def show; end

  def new
    @shop = Shop.new
    @shop.business_opening_hours.build

    # insert days into an instance variable to minimize ruby code in Front
    @weekdays = Date::DAYNAMES[0..6]
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
    @shop = Shop.find(params[:id])
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
end
