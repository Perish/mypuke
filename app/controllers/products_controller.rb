class ProductsController < ApplicationController
  def index
  	@products = @company.products.page(params[:page])
  end

  def show
  	@product = @company.products.find(params[:id])
  end

  def spread
  	@product = @company.products.limit(2)
  end
  
end
