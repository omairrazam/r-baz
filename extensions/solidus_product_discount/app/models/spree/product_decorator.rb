
module Spree
  Product.class_eval do

    CUSTOM_MASTER_ATTRIBUTES = [
        :discounted_price_for, :sale_price
    ]
    CUSTOM_MASTER_ATTRIBUTES.each do |attr|
      delegate :"#{attr}", :"#{attr}=", to: :find_or_build_master
    end
  end
end