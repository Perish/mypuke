class Admin::HomeController < Admin::AdminController
  def index
  	@messages = @company.messages.page(params[:page])
  end
end
