class CatalogController < ApplicationController
 skip_before_action :authenticate_user!
  def index
  	if params[:tag]
  		@gifts = Gift.tagged_with(params[:tag])
  	else 
  	@gifts = Gift.all
  	end
  end
end
