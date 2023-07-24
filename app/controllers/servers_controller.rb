class ServersController < ApplicationController
  before_action :set_server, only: %i[ show edit update destroy ]

  # GET /servers or /servers.json
  def index
    @servers = Server.all
  end

  # GET /servers/1 or /servers/1.json
  def show
  end

  # GET /servers/new
  def new
    @appserver = Appserver.order(:name)
    @appserver_version = AppserverVersion.order(:appserver_id)
    @environment = Environment.order(:name)
    @operatingsystem = Operatingsystem.order(:name)
    @appserverstatus = Appserverstatus.order(:name)
    @server = Server.new
  end

  # GET /servers/1/edit
  def edit
  end

  # POST /servers or /servers.json
  def create
    @server = Server.new(server_params)

    respond_to do |format|
      if @server.save
        format.html { redirect_to server_url(@server), notice: "Server was successfully created." }
        format.json { render :show, status: :created, location: @server }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servers/1 or /servers/1.json
  def update
    respond_to do |format|
      if @server.update(server_params)
        format.html { redirect_to server_url(@server), notice: "Server was successfully updated." }
        format.json { render :show, status: :ok, location: @server }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @server.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servers/1 or /servers/1.json
  def destroy
    @server.destroy

    respond_to do |format|
      format.html { redirect_to servers_url, notice: "Server was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_server
      @server = Server.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def server_params
      params.require(:server).permit(:name, :operatingsystem_id, :appserver_id, :appserver_version_id, :environment_id, :appserverstatus_id)
    end

  def getdata
    # this contains what has been selected in the first select box
    #@appserver = Appserver.order(:name)
    #@appserver_version = AppserverVersion.order(:appserver_id)
    @data_from_select1 = params[:appserver_id]

    # we get the data for selectbox 2
    @data_for_select2 = AppserverVersion.where(:appserver_id => @data_from_select1).all

    # render an array in JSON containing arrays like:
    # [[:id1, :name1], [:id2, :name2]]
    render :json => @data_for_select2.map{|c| [c.id, c.version]}
  end
end
