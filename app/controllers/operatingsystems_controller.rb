class OperatingsystemsController < ApplicationController
  before_action :set_operatingsystem, only: %i[ show edit update destroy ]

  # GET /operatingsystems or /operatingsystems.json
  def index
    @operatingsystems = Operatingsystem.all
  end

  # GET /operatingsystems/1 or /operatingsystems/1.json
  def show
  end

  # GET /operatingsystems/new
  def new
    @operatingsystem = Operatingsystem.new
  end

  # GET /operatingsystems/1/edit
  def edit
  end

  # POST /operatingsystems or /operatingsystems.json
  def create
    @operatingsystem = Operatingsystem.new(operatingsystem_params)

    respond_to do |format|
      if @operatingsystem.save
        format.html { redirect_to operatingsystem_url(@operatingsystem), notice: "Operatingsystem was successfully created." }
        format.json { render :show, status: :created, location: @operatingsystem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @operatingsystem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operatingsystems/1 or /operatingsystems/1.json
  def update
    respond_to do |format|
      if @operatingsystem.update(operatingsystem_params)
        format.html { redirect_to operatingsystem_url(@operatingsystem), notice: "Operatingsystem was successfully updated." }
        format.json { render :show, status: :ok, location: @operatingsystem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @operatingsystem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operatingsystems/1 or /operatingsystems/1.json
  def destroy
    @operatingsystem.destroy

    respond_to do |format|
      format.html { redirect_to operatingsystems_url, notice: "Operatingsystem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operatingsystem
      @operatingsystem = Operatingsystem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def operatingsystem_params
      params.require(:operatingsystem).permit(:name, :description, :support_start, :support_end)
    end
end
