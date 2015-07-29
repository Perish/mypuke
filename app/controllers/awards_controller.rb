class AwardsController < ApplicationController
  def index
  	@awards = @company.awards.page(params[:page])
  end
end
