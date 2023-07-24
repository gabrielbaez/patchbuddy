class AppserverVersionsController < ApplicationController
  before_action :set_appserver_version, only: %i[ show edit update destroy ]

  # GET /appserver_versions or /appserver_versions.json
  def index
    @appserver_versions = AppserverVersion.all
  end

  # GET /appserver_versions/1 or /appserver_versions/1.json
  def show
  end

  # GET /appserver_versions/new
  def new
    @appserver = Appserver.order(:name)
    @appserver_version = AppserverVersion.new
  end

  # GET /appserver_versions/1/edit
  def edit
  end

  # POST /appserver_versions or /appserver_versions.json
  def create
    @appserver_version = AppserverVersion.new(appserver_version_params)

    respond_to do |format|
      if @appserver_version.save
        format.html { redirect_to appserver_version_url(@appserver_version), notice: "Appserver version was successfully created." }
        format.json { render :show, status: :created, location: @appserver_version }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appserver_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appserver_versions/1 or /appserver_versions/1.json
  def update
    respond_to do |format|
      if @appserver_version.update(appserver_version_params)
        format.html { redirect_to appserver_version_url(@appserver_version), notice: "Appserver version was successfully updated." }
        format.json { render :show, status: :ok, location: @appserver_version }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appserver_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appserver_versions/1 or /appserver_versions/1.json
  def destroy
    @appserver_version.destroy

    respond_to do |format|
      format.html { redirect_to appserver_versions_url, notice: "Appserver version was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appserver_version
      @appserver_version = AppserverVersion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appserver_version_params
      params.require(:appserver_version).permit(:appserver_id, :version)
    end
end
