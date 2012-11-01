module Spree
  class HomeController < StoreController
    helper 'spree/products'
    helper 'spree/taxons'
    respond_to :html

    def index
      @searcher = Spree::Config.searcher_class.new(params)
      @products = @searcher.retrieve_products
      @posts = Post.all
      @recentAlbums = Product.order("created_at")
      respond_with(@products)

    end
  end
end
