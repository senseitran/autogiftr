class OccaisionsController < ApplicationController
  before_action :set_occaision, only: [:send_gift, :add_gift, :show, :edit, :update, :destroy]

  def add_gift
    if params[:gift]
      @gift = Gift.find(params[:gift])
      @gift.occaisions << @occaision
    end
    redirect_to :back
  end

  def send_gift
  #  @occaision.update_column('sent', true)
    DeliveryNotificationMailer.notify(@occaision).deliver
    redirect_to admin_path
  end

  # GET /occaisions
  # GET /occaisions.json
  def index
    @occaisions = Occaision.all
  end

  # GET /occaisions/1
  # GET /occaisions/1.json
  def show
    @gifts = Gift.all
  end

  # GET /occaisions/new
  def new
    @occaision = Occaision.new
    if params[:recipient]
      @recipient = Recipient.find(params[:recipient])
    end
  end

  # GET /occaisions/1/edit
  def edit
  end

  # POST /occaisions
  # POST /occaisions.json
  def create
    @occaision = Occaision.new(occaision_params)

    respond_to do |format|
      if @occaision.save
        format.html { redirect_to @occaision, notice: 'Occaision was successfully created.' }
        format.json { render :show, status: :created, location: @occaision }
      else
        format.html { render :new }
        format.json { render json: @occaision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /occaisions/1
  # PATCH/PUT /occaisions/1.json
  def update
    respond_to do |format|
      if @occaision.update(occaision_params)
        format.html { redirect_to @occaision, notice: 'Occaision was successfully updated.' }
        format.json { render :show, status: :ok, location: @occaision }
      else
        format.html { render :edit }
        format.json { render json: @occaision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /occaisions/1
  # DELETE /occaisions/1.json
  def destroy
    @occaision.destroy
    respond_to do |format|
      format.html { redirect_to occaisions_url, notice: 'Occaision was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_occaision
      @occaision = Occaision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def occaision_params
      params.require(:occaision).permit(:message, :name, :date, :occaision_type, :recipient_id)
    end
end
