class PesosController < ApplicationController
  before_action :set_peso, only: [:show, :edit, :update, :destroy]

  # GET /pesos
  # GET /pesos.json
  def index
    @pesos = Peso.all
  end

  # GET /pesos/1
  # GET /pesos/1.json
  def show
  end

  # GET /pesos/new
  def new
    @peso = Peso.new
  end

  # GET /pesos/1/edit
  def edit
  end

  # POST /pesos
  # POST /pesos.json
  def create
    @peso = Peso.new(peso_params)

    respond_to do |format|
      if @peso.save
        format.html { redirect_to @peso, notice: 'Peso was successfully created.' }
        format.json { render :show, status: :created, location: @peso }
      else
        format.html { render :new }
        format.json { render json: @peso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pesos/1
  # PATCH/PUT /pesos/1.json
  def update
    respond_to do |format|
      if @peso.update(peso_params)
        format.html { redirect_to @peso, notice: 'Peso was successfully updated.' }
        format.json { render :show, status: :ok, location: @peso }
      else
        format.html { render :edit }
        format.json { render json: @peso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pesos/1
  # DELETE /pesos/1.json
  def destroy
    @peso.destroy
    respond_to do |format|
      format.html { redirect_to pesos_url, notice: 'Peso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peso
      @peso = Peso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peso_params
      params.require(:peso).permit(:fecha, :peso, :usuario_id)
    end
end
