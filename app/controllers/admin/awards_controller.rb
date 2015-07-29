class Admin::AwardsController < Admin::AdminController
  
  before_action :find_award, except: [:index, :new, :create]

  def index
  	@awards = @company.awards.page params[:page]
  end

  def new
  	@award = @company.awards.new
  end

  def create
  	@award = @company.awards.new(award_params)
  	if @award.save
  		flash[:success] = "已经添加"
  		redirect_to admin_award_path(@award)
  	else
  		render :new
  	end
  end

  def show
  end

  def edit
  end

  def update
  	if @award.update_attributes(award_params)
  		flash[:success] = "已经更新"
  		redirect_to admin_award_path(@award)
  	else
  		render :new
  	end
  end

  def destroy
  	@award.destroy
  end

  private

  def award_params
  	params.require(:award).permit(:name, :pic)
  end

  def find_award
  	@award = @company.awards.find(params[:id])
  end

end
