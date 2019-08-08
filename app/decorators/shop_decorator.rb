class ShopDecorator < Draper::Decorator
  delegate_all   

  decorates :shop
  decorates_association :business_opening_hours

end