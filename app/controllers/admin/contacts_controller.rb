class Admin::ContactsController < Admin::AdminController
  def new
  	@contact = @company.contact || @company.build_contact
  end

  def create
  	@contact = @company.build_contact(contact_params)
  	if @contact.save
  		flash[:success] = "联系方式创建成功"
  		redirect_to  new_admin_contact_path
  	else
  		render :new
  	end
  end

  def update
  	@contact = @company.contact
  	if @contact.update_attributes(contact_params)
  		flash[:success] = "联系方式更新成功"
  		redirect_to new_admin_contact_path
  	else
  		render :new
  	end
  end


  private

  def contact_params
  	params.require(:contact).permit(:content)
  end
end
