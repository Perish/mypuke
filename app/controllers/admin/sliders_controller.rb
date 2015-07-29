class Admin::SlidersController < Admin::AdminController

  before_action :find_slider, except: [:index, :new, :create]

  def index
  	@sliders = @company.sliders.page params[:page]
  end

  def new
  	@slider = @company.sliders.new
  end

  def create
  	@slider = @company.sliders.new(slider_params)
  	if @slider.save
		flash["success"] = "创建成功"
		redirect_to admin_slider_path(@slider)
	else
		render :new
  	end
  end

  def show
  end

  def edit
  end

  def update
  	if @slider.update_attributes(slider_params)
		flash["success"] = "更新成功成功"
		redirect_to admin_slider_path(@slider)
	else
		render :new
  	end
  end

  def destroy
  	@slider.destroy
  end

  private

  def find_slider
  	@slider = @company.sliders.find(params[:id])
  end

  def slider_params
  	params.require(:slider).permit(:name, :pic, :style)
  end
end
