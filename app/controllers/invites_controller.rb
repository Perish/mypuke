class InvitesController < ApplicationController
  def index
  	@invites = @company.invites.page params[:page]
  end

  def show
  	@invite = @company.invites.find(params[:id])
  end
end
