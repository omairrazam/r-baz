Spree::BaseHelper.module_eval do

    def taxons_tree_product_show(root_taxon, current_taxon, max_level = 1)
      return '' if max_level < 1 || root_taxon.leaf?
      content_tag :div, class: 'list-group' do
        taxons = root_taxon.children.map do |taxon|
          css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'list-group-item list-group-item-custom active' : 'list-group-item list-group-item-custom'
          link_to(taxon.name, seo_url(taxon), class: css_class) + taxons_tree(taxon, current_taxon, max_level - 1)
        end
        safe_join(taxons, "\n")
      end
    end

    # def taxons_tree_product_show(root_taxon, current_taxon, max_level = 1)
    #   return '' if max_level < 1 || root_taxon.leaf?
    #   content_tag :ul do
    #     taxons = root_taxon.children.map do |taxon|
    #       concat(content_tag(:li,link_to(taxon.name, seo_url(taxon)) )) + taxons_tree(taxon, current_taxon, max_level - 1)
    #     end
    #     #safe_join(taxons, "\n")
    #   end
    # end

    def taxons_home_tree(root_taxon, current_taxon, max_level = 1)
      return '' if max_level < 1 || root_taxon.leaf?
		  count = 1;
		  taxons = root_taxon.children.map do |taxon|
  			content_tag :div, class: 'item' do
  		 		#css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'list-group-item active' : 'list-group-item'
  		  		l = link_to(seo_url(taxon)) do
  		  		  image_tag("spree/frontend/pic#{count}.jpg", :class => "img-responsive")+div_run_tag(taxon.name)
  		  		end
  		  		count+=1
  		  		l + taxons_tree(taxon, current_taxon, max_level - 1) 
  			end
		  end
		  safe_join(taxons, "")
    end

    def div_run_tag(title)
    	content_tag(:div, class: 'run') do 
    		concat(content_tag(:i))
    		concat(content_tag(:p, title))
    	end 
    end

    def taxons_tree_footer(root_taxon, current_taxon, max_level = 1)
      return '' if max_level < 1 || root_taxon.leaf?
      content_tag :ul, class: 'run-grid' do
        taxons = root_taxon.children.map do |taxon|
        	concat(content_tag(:li,link_to(taxon.name, seo_url(taxon)) )) + taxons_tree(taxon, current_taxon, max_level - 1)
        end
        #safe_join(taxons, "\n")
      end
    end

end
