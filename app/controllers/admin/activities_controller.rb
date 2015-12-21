class Admin::ActivitiesController < ApplicationController
	layout 'admin'
  def index
  	@activities = @company.activities.page params[:page]
  end

  def new
  	@activity = @company.activities.new
  end

  def create
  	@activity = @company.activities.new(activity_params)
  	if @activity.save
  		redirect_to admin_activities_path
  	else
  		render 'new'
  	end
  end

  def edit
  	@activity = @company.activities.find(params[:id])
  end

  def update
  	@activity = @company.activities.find(params[:id])
  	if @activity.update_attributes(activity_params)
  		redirect_to admin_activities_path
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@activity = @company.activities.find(params[:id])
  	@activity.destroy
  end


  private
  def activity_params
  	params.require(:activity).permit(:pic, :desc, :status)
  end
end
