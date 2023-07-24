class AppserverstatusesController < ApplicationController
  before_action :set_appserverstatus, only: %i[ show edit update destroy ]

  # GET /appserverstatuses or /appserverstatuses.json
  def index
    @appserverstatuses = Appserverstatus.all
  end

  # GET /appserverstatuses/1 or /appserverstatuses/1.json
  def show
  end

  # GET /appserverstatuses/new
  def new
    @appserverstatus = Appserverstatus.new
  end

  # GET /appserverstatuses/1/edit
  def edit
  end

  # POST /appserverstatuses or /appserverstatuses.json
  def create
    @appserverstatus = Appserverstatus.new(appserverstatus_params)

    respond_to do |format|
      if @appserverstatus.save
        format.html { redirect_to appserverstatus_url(@appserverstatus), notice: "Appserverstatus was successfully created." }
        format.json { render :show, status: :created, location: @appserverstatus }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appserverstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appserverstatuses/1 or /appserverstatuses/1.json
  def update
    respond_to do |format|
      if @appserverstatus.update(appserverstatus_params)
        format.html { redirect_to appserverstatus_url(@appserverstatus), notice: "Appserverstatus was successfully updated." }
        format.json { render :show, status: :ok, location: @appserverstatus }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appserverstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appserverstatuses/1 or /appserverstatuses/1.json
  def destroy
    @appserverstatus.destroy

    respond_to do |format|
      format.html { redirect_to appserverstatuses_url, notice: "Appserverstatus was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appserverstatus
      @appserverstatus = Appserverstatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appserverstatus_params
      params.require(:appserverstatus).permit(:name, :description)
    end
end
