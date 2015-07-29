class InfosController < ApplicationController
  def index
  	@infos = if params[:flag].to_i != 2
  		@company.infos.cinfos.page(params[:page])
  	else
  		@company.infos.iinfos.page(params[:page])
  	end
  end

  def show
  	@info = @company.infos.find(params[:id])
  end
end
