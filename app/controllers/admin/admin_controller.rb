class Admin::AdminController < ApplicationController
  layout 'admin'
  before_action :login_required, :has_company

  private

  def has_company
  	if set_company.blank? && !set_company.persisted?
		flash[:warning] = "请先创建公司介绍" 
		redirect_to new_admin_company_path
  	end
  end
end