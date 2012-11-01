Deface::Override.new(:virtual_path  => "spree/admin/products/_form",
                     :insert_bottom 	=> "[data-hook='admin_product_form_left']",
                     :partial       => "shared/product_add_heading",
                     :name          => "product_heading")

Deface::Override.new(:virtual_path  => "spree/admin/products/_form",
                     :replace 	=> "textarea#product_description",
                     :partial 			=> "shared/product_add_text_editor",
                     :name          => "add_text_editor")

Deface::Override.new(:virtual_path  => "spree/admin/products/_form",
                     :replace				=> "[data-hook='admin_product_form_additional_fields']",
                     :partial 			=> "shared/product_add_artists",
                     :name          => "add_artists")