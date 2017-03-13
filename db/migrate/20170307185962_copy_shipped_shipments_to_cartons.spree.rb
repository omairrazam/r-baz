# This migration comes from spree_old (originally 20150313201503)
class CopyShippedShipmentsToCartons < ActiveRecord::Migration[4.2]
  # Prevent everything from running in one giant transaction in postrgres.
  disable_ddl_transaction!

  def up
    Rake::Task["spree_old:migrations:copy_shipped_shipments_to_cartons:up"].invoke
  end

  def down
    Rake::Task["spree_old:migrations:copy_shipped_shipments_to_cartons:down"].invoke
  end
end