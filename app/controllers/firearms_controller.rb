class FirearmsController < ApplicationController
  before_action :set_firearm, only: [:show, :edit, :update, :destroy]

  # GET /firearms
  # GET /firearms.json
  def index
    @fires = Firearm.all
    @firearms = Firearm.search(params)
  end


  # GET /firearms/1
  # GET /firearms/1.json
  def show
  end

  # GET /firearms/new
  def new
    @firearm = Firearm.new
    @firearm.build_additional_fire
  end

  # GET /firearms/1/edit
  def edit
    @firearm.build_additional_fire if @additional_fire.nil?
  end

  # POST /firearms
  # POST /firearms.json
  def create
    @firearm = Firearm.new(firearm_params)

    respond_to do |format|
      if @firearm.save
        format.html { redirect_to @firearm, notice: 'Firearm was successfully created.' }
        format.json { render :show, status: :created, location: @firearm }
      else
        format.html { render :new }
        format.json { render json: @firearm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firearms/1
  # PATCH/PUT /firearms/1.json
  def update
    respond_to do |format|
      if @firearm.update(firearm_params)
        format.html { redirect_to @firearm, notice: 'Firearm was successfully updated.' }
        format.json { render :show, status: :ok, location: @firearm }
      else
        format.html { render :edit }
        format.json { render json: @firearm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firearms/1
  # DELETE /firearms/1.json
  def destroy
    @firearm.destroy
    respond_to do |format|
      format.html { redirect_to firearms_url, notice: 'Firearm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firearm
      @firearm = Firearm.find(params[:id])
      @additional_fire = @firearm.additional_fire
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def firearm_params
      params.require(:firearm).
         permit(:name, :fixed, :typearm, :atstus, :country, :year, :caliber, :action_type, :trigger_type, :feeding_mech, :barrel_l, :over_l, :over_l_f, :em_w, :l_w, :am_cap, :fr_mat, :stock_type, :rate_of_fire, :summary,
         pictures_attributes: Picture.attribute_names.map(&:to_sym).push(:_destroy),
         additional_fire_attributes: AdditionalFire.attribute_names.map(&:to_sym).push(:_destroy))
    end
end
