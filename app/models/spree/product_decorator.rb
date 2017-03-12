module Spree
  Product.class_eval do
    before_validation :set_prices

    prices = [:retail_price, :reseller_price, :wholeseller_price, :purchase_price]

    prices.each do |price|
      validates price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }
    end

    private
    def set_prices
      self.retail_price = 0.00 if retail_price.blank?
      self.reseller_price = 0.00 if reseller_price.blank?
      self.wholeseller_price = 0.00 if wholeseller_price.blank?
      self.purchase_price = 0.00 if purchase_price.blank?
    end
  end
end
