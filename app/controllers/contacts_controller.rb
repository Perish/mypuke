class ContactsController < ApplicationController

	before_action :message_params, only: [:create]

  def index
  	@contact = @company.contact
  	@message = @company.messages.new
  end

  def create
  	@message = @company.messages.new(message_params)
  	if @message.save
      flash[:success] = "已经发送"
  		redirect_to contacts_path
  	else
      @contact = @company.contact
  		render "index"
  	end
  end

  private

  def message_params
  	params.require(:message).permit(:name, :tel, :email, :content)
  end
end
