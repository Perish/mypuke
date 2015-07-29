class Admin::InvitesController < Admin::AdminController

  before_action :find_invite, except: [:index, :new, :create]

  def index
  	@invites = @company.invites.page params[:page]
  end

  def new
  	@invite = @company.invites.new
  end

  def create
  	@invite = @company.invites.new(invite_params)
  	if @invite.save
  		flash[:success] = "已经添加"
  		redirect_to admin_invite_path(@invite)
  	else
  		render :new
  	end
  end

  def show
  end

  def edit
  end

  def update
  	if @invite.update_attributes(invite_params)
  		flash[:success] = "已经更新"
  		redirect_to admin_invite_path(@invite)
  	else
  		render :new
  	end
  end

  def destroy
  	@invite.destroy
  end

  private

  def invite_params
  	params.require(:invite).permit(:name, :content)
  end

  def find_invite
  	@invite = @company.invites.find(params[:id])
  end
end
