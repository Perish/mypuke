class Admin::CustomesController < Admin::AdminController
  before_action :find_custome

  def new
  	
  end

  def show
  	
  end

  def create
  	if @custome.update_attributes(custome_params)
  		redirect_to admin_custome_path(@custome)
  	else
  		render :new
  	end
  end

  private

  def find_custome
  	@custome = @company.custome || @company.build_custome
  end

  def custome_params
  	params.require(:custome).permit(:content)
  end

end