# This migration comes from spree_old (originally 20150226195213)
class DowncasePromotionCodesValues < ActiveRecord::Migration[4.2]
  def up
    Spree::PromotionCode.update_all("value = lower(value)")
    Spree::Promotion.where.not(code: nil).update_all("code = lower(code)")
  end

  def down
    # can't tell which things we updated vs what things were like before
    raise ActiveRecord::IrreversibleMigration
  end
end
