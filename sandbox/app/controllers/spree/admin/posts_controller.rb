module Spree
  module Admin
    class PostsController < ResourceController
    	def index
		    @posts = Merriweather::Post.all

		    respond_to do |format|
		      format.html # index.html.erb
		      format.json { render json: @posts }
		    end
		  end
    end
  end
end