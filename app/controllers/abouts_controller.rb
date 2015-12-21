class AboutsController < ApplicationController
  def index
  	@about = @company.about || @company.build_about
  end
end
