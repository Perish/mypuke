class Admin::AboutsController < ApplicationController
	before_action :find_about, except: [:create]
  layout 'admin'
  def show
  end

  def create
  	@about = @company.build_about(about_params)
  	if @about.save
  		redirect_to admin_about_path
  	else
  		render 'show'
  	end
  end

  def update
  	if @about.update_attributes(about_params)
  		redirect_to admin_about_path
  	else
  		render 'show'
  	end
  end

  private 
  def find_about
  	@about = @company.about || @company.build_about
  end

  def about_params
  	params.require(:about).permit(:desc)
  end

end
