class AdminController < ApplicationController
  def index
  	@gifts = Gift.all
  	@accounts = Account.all
  	@future_occaisions = Occaision.order_by_date.future
  	authorize! :update, Gift
  end
end