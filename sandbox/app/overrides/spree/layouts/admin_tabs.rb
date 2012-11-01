Deface::Override.new(:virtual_path  => "spree/layout/admin",
                     :insert_after 	=> "[data-hook='admin_tabs']",
                     :text          => "<p>Registration is the future!</p>",
                     :name          => "registration_future")