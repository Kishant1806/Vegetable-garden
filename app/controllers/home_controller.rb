class HomeController < ApplicationController
 	before_action :authenticate_user!
	def index
		if params[:q].present?
    	@vegetables = Vegetable.where("name LIKE ?","%" + params[:q] + "%").paginate(page: params[:page], per_page: 2)
    else
    	@vegetables = Vegetable.all.paginate(page: params[:page], per_page: 2)
    end
  end

	def contact_us

  end
  
  def about_us
  	
  end


end
