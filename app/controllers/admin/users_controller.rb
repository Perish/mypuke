class Admin::UsersController < Admin::AdminController

  before_action :find_user, except: [:index, :new, :create]

  def index
    @users = User.all.page params[:page]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash["success"] = "创建成功"
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash["success"] = "更新成功"
      redirect_to admin_user_path(@user)
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @user.destroy
  end


  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :password,:password_confirmation)
  end
end