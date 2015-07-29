# coding: utf-8
class Admin::CompaniesController < Admin::AdminController
  skip_before_action :has_company, except: [:update]
  # 公司介绍
  def new
  end
  
  def create
    @company.attributes = company_params
    @company.user_id = current_user.id
    if @company.save
      flash[:success] = "创建成功"
      redirect_to new_admin_company_path
    else
      render :new
    end
  end
  
  def update
    if @company.update_attributes(company_params)
      flash[:success] = "更新成功"
      redirect_to new_admin_company_path
    else
      render :new
    end
  end
  
  private
  
  def company_params
    params.require(:company).permit(:name, :content, :summary, :pic, :main_url)
  end
  
end