Deface::Override.new(virtual_path: 'spree/admin/products/_form',
                     name: 'add_sale_price_to_product_edit',
                     insert_after: "[data-hook='admin_product_form_price']",
                     text: "<div data-hook='admin_product_form_sale_price'>
<%= f.field_container :sale_price do %>
<%= f.label :sale_price, class: 'required' %>
<%= render '/spree/admin/shared/number_with_currency', f: f, amount_attr: :sale_price, currency: @product.find_or_build_master.default_price.currency %>
<%= f.error_message_on :sale_price %>
<% end %>
</div>"
                     )
