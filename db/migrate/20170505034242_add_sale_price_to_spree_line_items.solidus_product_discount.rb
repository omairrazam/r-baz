# This migration comes from solidus_product_discount (originally 20170505034016)
class AddSalePriceToSpreeLineItems < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_line_items, :sale_price, :decimal
  end
end
