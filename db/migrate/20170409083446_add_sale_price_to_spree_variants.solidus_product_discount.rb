# This migration comes from solidus_product_discount (originally 20170408203739)
class AddSalePriceToSpreeVariants < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_variants, :sale_price, :decimal
  end
end
