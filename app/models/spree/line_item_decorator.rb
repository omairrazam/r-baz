Spree::LineItem.class_eval do
  alias_method :orig_amount, :amount
  alias_method :orig_attributes_set, :set_pricing_attributes
  #alias single_money_sale display_discounted_price
  money_methods :sale_price
  alias single_money_sale display_sale_price

  def amount
    return orig_amount unless sale_price.present?
    sale_price * quantity
  end

  def set_pricing_attributes
    self.sale_price ||= variant.sale_price
    orig_attributes_set
  end
end