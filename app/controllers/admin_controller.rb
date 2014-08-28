class AdminController < ApplicationController
  def index
  	@gifts = Gift.paginate(:page => params[:page], :per_page => 3)
  	@accounts = Account.all
  	@future_occaisions = Occaision.order_by_date.future
  	authorize! :update, Gift
  end
end