Spree::Image.class_eval do
  attachment_definitions[:attachment][:styles].merge!(
    :home_product => '186x170!',
    :thumbnail   => '360x480!',
    :zoom   => '1080x1440!'
  )
end