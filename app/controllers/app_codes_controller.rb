class AppCodesController < ApplicationController
  before_action :set_app_code, only: %i[ show edit update destroy ]

  # GET /app_codes or /app_codes.json
  def index
    @app_codes = AppCode.all
  end

  # GET /app_codes/1 or /app_codes/1.json
  def show
  end

  # GET /app_codes/new
  def new
    @app_code = AppCode.new
  end

  # GET /app_codes/1/edit
  def edit
  end

  # POST /app_codes or /app_codes.json
  def create
    @app_code = AppCode.new(app_code_params)

    respond_to do |format|
      if @app_code.save
        format.html { redirect_to app_code_url(@app_code), notice: "App code was successfully created." }
        format.json { render :show, status: :created, location: @app_code }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @app_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_codes/1 or /app_codes/1.json
  def update
    respond_to do |format|
      if @app_code.update(app_code_params)
        format.html { redirect_to app_code_url(@app_code), notice: "App code was successfully updated." }
        format.json { render :show, status: :ok, location: @app_code }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @app_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_codes/1 or /app_codes/1.json
  def destroy
    @app_code.destroy

    respond_to do |format|
      format.html { redirect_to app_codes_url, notice: "App code was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_code
      @app_code = AppCode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def app_code_params
      params.require(:app_code).permit(:name, :description, :manager, :manager_email, :support_email)
    end
end
