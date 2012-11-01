Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
								            :name => 'add_script_tag',
								            :insert_after => "[data-hook='body']",
								            :partial => "shared/script")