class MoochesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_mooch, only: [:show, :edit, :update, :destroy]

  # GET /mooches
  # GET /mooches.json
  def index
    @mooches = Mooch.all
  end

  # GET /mooches/1
  # GET /mooches/1.json
  def show
  end

  # GET /mooches/new
  def new
    request.remote_ip
    @mooch = current_user.mooches.new
  end

  # GET /mooches/1/edit
  def edit
  end

  # POST /mooches
  # POST /mooches.json
  def create
    request.remote_ip 
    result = request.location
    @mooch = current_user.mooches.new(mooch_params)



    respond_to do |format|
      if @mooch.save
        format.html { redirect_to @mooch, notice: 'Mooch was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mooch }
      else
        format.html { render action: 'new' }
        format.json { render json: @mooch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mooches/1
  # PATCH/PUT /mooches/1.json
  def update
    respond_to do |format|
      if @mooch.update(mooch_params)
        format.html { redirect_to @mooch, notice: 'Mooch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mooch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mooches/1
  # DELETE /mooches/1.json
  def destroy
    @mooch.destroy
    respond_to do |format|
      format.html { redirect_to mooches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mooch
      @mooch = Mooch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mooch_params
      params.require(:mooch).permit(:description, :user_id, :latitude, :longitude)
    end
end