class BrandsController < ApplicationController

	 #load_and_authorize_resource
  before_action :authenticate_user!
	
  def index
     @brands = Brand.all
  end

  def display
      @brand = Brand.find(params[:id])
  end

  def cart
      @brand = Brand.find(params[:id])
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def new
    @brand = Brand.new  
  end

  def create
      @brand = Brand.new(brand_params)
    if @brand.save
        redirect_to brands_path(@brand), notice: "The brands has been successfully created"
    end
  end

  def edit
      @brand = Brand.find(params[:id])
     end

  def update
    @brand = Brand.find(params[:id])
     if @brand.update_attributes(brand_params)
      
      redirect_to brands_path(@brand), notice: "The brands has been successfully updated"
    end
  end

  def destroy
      @brand = Brand.find(params[:id])
      @brand.destroy
      
      redirect_to brands_path, notice: "The brands has been successfully deleted"
  end
  
  private
  def brand_params
      params.require(:brand).permit(:product_id, :category_id, :name)
  end

end
