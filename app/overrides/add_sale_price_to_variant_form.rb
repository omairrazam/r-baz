Deface::Override.new(virtual_path: 'spree/admin/variants/_form',
                     name: 'add_sale_price_to_variant_form',
                     insert_after: "[data-hook='cost_price']",
                     text: '
                     <div class="field" data-hook="sale_price">
                        <%= f.label :sale_price %>
                         <%= render "/spree/admin/shared/number_with_currency", f: f, amount_attr: :sale_price, currency: @product.find_or_build_master.default_price.currency %>
                      </div>'
)


