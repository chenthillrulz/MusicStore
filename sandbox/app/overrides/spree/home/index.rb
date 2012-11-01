Deface::Override.new(:virtual_path => 'spree/home/index',
                        :name => 'add_gallery',
                        :replace => "[data-hook='homepage_products']",
                        :partial => "shared/home")