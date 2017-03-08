Deface::Override.new(
  virtual_path: "spree/admin/products/_form",
  insert_after: "[data-hook=admin_product_form_description]",
  name: "add_new_fields_to_product_form",
  text: "
  <div data-hook=\"admin_product_form_source\">
    <%= f.field_container :source, class: ['form-group'] do %>
      <%= f.label :source, Spree.t(:source) %>
      <%= f.text_field :source, class: 'form-control'  %>
      <%= f.error_message_on :source %>
    <% end %>
  </div>
  <div data-hook=\"admin_product_form_vendor_id\">
    <%= f.field_container :vendor_id, class: ['form-group'] do %>
      <%= f.label :vendor_id, Spree.t(:vendor_id) %>
      <%= f.text_field :vendor_id, class: 'form-control'  %>
      <%= f.error_message_on :vendor_id %>
    <% end %>
  </div>
  <div data-hook=\"admin_product_form_site_id\">
    <%= f.field_container :site_id, class: ['form-group'] do %>
      <%= f.label :site_id, Spree.t(:site_id) %>
      <%= f.text_field :site_id, class: 'form-control'  %>
      <%= f.error_message_on :site_id %>
    <% end %>
  </div>
  "
)
