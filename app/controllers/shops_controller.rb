# frozen_string_literal: true

class ShopsController < ApplicationController
  before_action :set_shops, only: %i[show edit update]
  # before_action :order_by_current_day

  def index
    @shops = Shop.all

    weekdays = Date::DAYNAMES[0..6]  
    weekdays_rotate = weekdays.rotate!(weekdays.index(Time.now.strftime("%A")))  
    weekdays_rotate_integer = weekdays_rotate.map do |lol|  
      Date.parse(lol).strftime('%w')  
    end
  
    @case_pieces = weekdays_rotate_integer.each_with_index.map do |day, i| 
      "WHEN '#{day}' THEN #{i}" 
    end   
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

def order_by_current_day
  daysname = Date::DAYNAMES[0..6]  
  daysname_rotate = daysname.rotate!(daysname.index(Time.now.strftime("%A")))  
  
  integer_name = daysname_rotate.map do |lol|  
    Date.parse(lol).strftime('%w')  
  end

  case_pieces = integer_name.each_with_index.map do |day, i| 
    "WHEN '#{day}' THEN #{i}" 
  end 

  # @shop.business_opening_hours.all.order("CASE day #{case_pieces.join(' ')} END").each_with_index do |hour, index|


end





end
