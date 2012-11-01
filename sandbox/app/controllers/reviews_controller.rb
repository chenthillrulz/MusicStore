class ReviewsController < Spree::BaseController
  before_filter :load_data

  helper 'spree/admin/navigation'
  layout "spree/layouts/admin", :except => [:show]
  # GET /reviews
  # GET /reviews.json
  def index
    @product = Spree::Product.where(:permalink => params[:product_id]).first
    @reviews = @product.reviews

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reviews }
      #render :layout => "spree/layouts/spree_application" and return
    end
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @review = Review.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @review }      
      render :layout => "spree/layouts/spree_application" and return
    end
  end

  # GET /reviews/new
  # GET /reviews/new.json
  def new
    @product = Spree::Product.where(:permalink => params[:product_id]).first
    @review = @product.reviews.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @review }
    end
  end

  # GET /reviews/1/edit
  def edit
    @product = Spree::Product.where(:permalink => params[:product_id]).first
    @review = Review.find(params[:id])
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @product = Spree::Product.where(:permalink => params[:product_id]).first
    @review = @product.reviews.build(params[:review])

    respond_to do |format|
      if @review.save
        format.html { redirect_to location_after_save, notice: 'Review was successfully created.' }
        format.json { render json: @review, status: :created, location: @review }
      else
        format.html { render action: "new" }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reviews/1
  # PUT /reviews/1.json
  def update
    @review = Review.find(params[:id])

    respond_to do |format|
      if @review.update_attributes(params[:review])
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    respond_to do |format|
      format.html { redirect_to location_after_save }
      format.json { head :no_content }
    end
  end

  private

    def location_after_save
      admin_product_reviews_url(@product)
    end

    def load_data
      @product = Spree::Product.where(:permalink => params[:product_id]).first
    end
end
