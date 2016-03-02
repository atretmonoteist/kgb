class ScandosController < ApplicationController
  before_action :set_scando, only: [:show, :edit, :update, :destroy]

  # GET /scandos
  # GET /scandos.json
  def index
    @scandos = Scando.all
  end

  # GET /scandos/1
  # GET /scandos/1.json
  def show
  end

  # GET /scandos/new
  def new
    @scando = Scando.new
  end

  # GET /scandos/1/edit
  def edit
  end

  # POST /scandos
  # POST /scandos.json
  def create
    @scando = Scando.new(scando_params)

    respond_to do |format|
      if @scando.save
        format.html { redirect_to @scando, notice: 'Scando was successfully created.' }
        format.json { render :show, status: :created, location: @scando }
      else
        format.html { render :new }
        format.json { render json: @scando.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scandos/1
  # PATCH/PUT /scandos/1.json
  def update
    respond_to do |format|
      if @scando.update(scando_params)
        format.html { redirect_to @scando, notice: 'Scando was successfully updated.' }
        format.json { render :show, status: :ok, location: @scando }
      else
        format.html { render :edit }
        format.json { render json: @scando.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scandos/1
  # DELETE /scandos/1.json
  def destroy
    @scando.destroy
    respond_to do |format|
      format.html { redirect_to scandos_url, notice: 'Scando was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scando
      @scando = Scando.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scando_params
      params.require(:scando).permit(:do_name, :do_description, :do_address, :do_phone, :do_fax)
    end
end
