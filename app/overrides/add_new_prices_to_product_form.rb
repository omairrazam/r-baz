Deface::Override.new(
  virtual_path: "spree/admin/products/_form",
  insert_after: "[data-hook=admin_product_form_cost_price]",
  name: "add_new_prices_to_product_form",
  text: "
  <div data-hook=\"admin_product_form_retail_price\" class=\"alpha two columns\">
    <%= f.field_container :retail_price, class: ['form-group'] do %>
      <%= f.label :retail_price, Spree.t(:retail_price) %>
      <%= f.text_field :retail_price, value: number_to_currency(@product.retail_price, unit: ''), class: 'form-control' %>
      <%= f.error_message_on :retail_price %>
    <% end %>
  </div>
  <div data-hook=\"admin_product_form_reseller_price\" class=\"alpha two columns\">
    <%= f.field_container :reseller_price, class: ['form-group'] do %>
      <%= f.label :reseller_price, Spree.t(:reseller_price) %>
      <%= f.text_field :reseller_price, value: number_to_currency(@product.reseller_price, unit: ''), class: 'form-control' %>
      <%= f.error_message_on :reseller_price %>
    <% end %>
  </div>
  <div data-hook=\"admin_product_form_wholeseller_price\" class=\"alpha two columns\">
    <%= f.field_container :wholeseller_price, class: ['form-group'] do %>
      <%= f.label :wholeseller_price, Spree.t(:wholeseller_price) %>
      <%= f.text_field :wholeseller_price, value: number_to_currency(@product.wholeseller_price, unit: ''), class: 'form-control' %>
      <%= f.error_message_on :wholeseller_price %>
    <% end %>
  </div>
  <div data-hook=\"admin_product_form_wholeseller_price\" class=\"alpha two columns\">
    <%= f.field_container :purchase_price, class: ['form-group'] do %>
      <%= f.label :purchase_price, Spree.t(:purchase_price) %>
      <%= f.text_field :purchase_price, value: number_to_currency(@product.purchase_price, unit: ''), class: 'form-control' %>
      <%= f.error_message_on :purchase_price %>
    <% end %>
  </div>"
)
