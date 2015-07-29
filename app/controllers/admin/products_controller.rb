class Admin::ProductsController < Admin::AdminController

	before_action :find_product, except: [:index, :new, :create]

	def index
		@products = @company.products.page params[:page]
	end

	def new
		@product = @company.products.new
	end

	def create
		@product = @company.products.new(product_params)
		if @product.save
			flash["success"] = "创建成功"
			redirect_to admin_product_path(@product)
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @product.update_attributes(product_params)
			flash["success"] = "更新成功"
			redirect_to admin_product_path(@product)
		else
			render :edit
		end
	end

	def show
	end

	def destroy
		@product.destroy
	end


	private

	def find_product
		@product = @company.products.find(params[:id])
	end

	def product_params
		params.require(:product).permit(:name, :content, :pic)
	end
end
