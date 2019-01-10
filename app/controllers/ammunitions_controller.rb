class AmmunitionsController < ApplicationController
  before_action :set_ammunition, only: [:show, :edit, :update, :destroy]

  # GET /ammunitions
  # GET /ammunitions.json
  def index
    @ammos = Ammunition.all
    @ammunitions = Ammunition.search(params)
  end

  # GET /ammunitions/1
  # GET /ammunitions/1.json
  def show
  end

  # GET /ammunitions/new
  def new
    @ammunition = Ammunition.new
    @ammunition.pictures.build
    @ammunition.build_additional_ammo
  end

  # GET /ammunitions/1/edit
  def edit
    @ammunition.pictures.build
    @ammunition.build_additional_ammo
  end

  # POST /ammunitions
  # POST /ammunitions.json
  def create
    @ammunition = Ammunition.new(ammunition_params)

    respond_to do |format|
      if @ammunition.save
        format.html { redirect_to @ammunition, notice: 'Ammunition was successfully created.' }
        format.json { render :show, status: :created, location: @ammunition }
      else
        format.html { render :new }
        format.json { render json: @ammunition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ammunitions/1
  # PATCH/PUT /ammunitions/1.json
  def update
    respond_to do |format|
      if @ammunition.update(ammunition_params)
        format.html { redirect_to @ammunition, notice: 'Ammunition was successfully updated.' }
        format.json { render :show, status: :ok, location: @ammunition }
      else
        format.html { render :edit }
        format.json { render json: @ammunition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ammunitions/1
  # DELETE /ammunitions/1.json
  def destroy
    @ammunition.destroy
    respond_to do |format|
      format.html { redirect_to ammunitions_url, notice: 'Ammunition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ammunition
      @ammunition = Ammunition.find(params[:id])
      @add_amm = @ammunition.additional_ammo
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ammunition_params
      params.require(:ammunition).permit(:name, :type_bul, :country, :weight, :speed, :energy, :note,
        pictures_attributes: Picture.attribute_names.map(&:to_sym).push(:_destroy),
        additional_ammo_attributes: AdditionalAmmo.attribute_names.map(&:to_sym).push(:_destroy))
    end
end
