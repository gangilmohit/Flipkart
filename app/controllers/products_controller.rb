class ProductsController < ApplicationController

   # load_and_authorize_resource
  before_action :authenticate_user!



  def index
      @products = Product.all
  end

  def show
        @product = Product.find(params[:id])
  end

  def new
       @product = Product.new
  end

  def create
        @product = Product.new(product_params)

    if @product.save
      redirect_to products_path, notice: "The products has been successfully created."
    end
  end

  def edit
          @product = Product.find(params[:id])
  end

  def update
       @product = Product.find(params[:id])
      if @product.update_attributes(product_params)
      redirect_to products_path, notice: "The products has been updated"
    end
  end

  def destroy
      @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :title, :description, :price)
  end

end
