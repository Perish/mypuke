class ActivitiesController < ApplicationController
  def show
  	@activity = @company.activities.find(params[:id])
  end
end
