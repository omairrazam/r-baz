module Spree
  Variant.class_eval do
    def discounted_price_for(currency)
      return price_for(currency) unless sale_price.present?
      Spree::Price.new(variant_id: self.id, amount: self.sale_price, currency: 'PKR').try!(:money)
    end
  end
end




