class CatalogController < ApplicationController
 skip_before_action :authenticate_user!
  def index
  	@gifts = Gift.all
  end
end
