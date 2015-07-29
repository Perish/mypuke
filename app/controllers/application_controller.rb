class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_company

  def current_user
    if cookies[:token]
      @current_user ||= User.find_by(token: cookies[:token])
      if @current_user.blank?
        cookies.delete(:token)
        return  nil
      else
        @current_user
      end
    end
  end

  def login?
    !!current_user
  end

  def login_required
    unless login?
      redirect_to admin_login_path
    end
  end

  def no_login_required
    if login?
      redirect_to admin_home_path
    end
  end

  def set_company
    @company = if login?
                 current_user.company
               else
                 Company.first
               end || Company.new
  end

  helper_method :current_user, :login?
end
