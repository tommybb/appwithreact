class FuelConsumptionsController < ApplicationController
  before_action :set_fuel_consumption, only: [:show, :edit, :update, :destroy]

  # GET /fuel_consumptions
  # GET /fuel_consumptions.json
  def index
    @fuel_consumptions = FuelConsumption.all
  end

  # GET /fuel_consumptions/1
  # GET /fuel_consumptions/1.json
  def show
  end

  # GET /fuel_consumptions/new
  def new
    @fuel_consumption = FuelConsumption.new
  end

  # GET /fuel_consumptions/1/edit
  def edit
  end

  # POST /fuel_consumptions
  # POST /fuel_consumptions.json
  def create
    @fuel_consumption = FuelConsumption.new(fuel_consumption_params)

    respond_to do |format|
      if @fuel_consumption.save
        format.html { redirect_to @fuel_consumption, notice: 'Fuel consumption was successfully created.' }
        format.json { render :show, status: :created, location: @fuel_consumption }
      else
        format.html { render :new }
        format.json { render json: @fuel_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fuel_consumptions/1
  # PATCH/PUT /fuel_consumptions/1.json
  def update
    respond_to do |format|
      if @fuel_consumption.update(fuel_consumption_params)
        format.html { redirect_to @fuel_consumption, notice: 'Fuel consumption was successfully updated.' }
        format.json { render :show, status: :ok, location: @fuel_consumption }
      else
        format.html { render :edit }
        format.json { render json: @fuel_consumption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fuel_consumptions/1
  # DELETE /fuel_consumptions/1.json
  def destroy
    @fuel_consumption.destroy
    respond_to do |format|
      format.html { redirect_to fuel_consumptions_url, notice: 'Fuel consumption was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuel_consumption
      @fuel_consumption = FuelConsumption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fuel_consumption_params
      params.require(:fuel_consumption).permit(:distance, :fuel_amount)
    end
end
