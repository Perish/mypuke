class Admin::InfosController < Admin::AdminController
  
  before_action :find_info, except: [:index, :new, :create]

  def index
  	@infos = @company.infos.page params[:page]
  end

  def new
  	@info = @company.infos.new
  end

  def create
  	@info = @company.infos.new(info_params)
  	if @info.save
  		flash[:success] = "资讯创建成功"
  		redirect_to admin_info_path(@info)
  	else
  		render :new
  	end
  end

  def show
  end

  def edit
  end

  def update
  	if @info.update_attributes(info_params)
  		flash[:success] = "资讯更新成功"
  		redirect_to admin_info_path(@info)
  	else
  		render :edit
  	end
  end

  def destroy
  	@info.destroy
  end

  private

  def find_info
    @info = @company.infos.find(params[:id])
  end

  def info_params
  	params.require(:info).permit(:name, :style, :content)
  end
end
