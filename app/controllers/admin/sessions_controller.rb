class Admin::SessionsController < ApplicationController
  before_action :no_login_required, except: [:destroy]
  layout "admin"
  def new
  end
  
  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      cookies[:token] = { value: user.token, expires: 1.hour.from_now }
      redirect_to admin_home_path
    else
      flash.now[:danger] = "用户名或密码错误！"
      render :new
    end
  end
  
  def destroy
    cookies.delete(:token)
    redirect_to admin_login_path
  end
end
