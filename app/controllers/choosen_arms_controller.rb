class ChoosenArmsController < ApplicationController
  before_action :set_choosen_arm, only: [:show, :edit, :update, :destroy]

  # GET /choosen_arms
  # GET /choosen_arms.json
  def index
    @choosen_arms = ChoosenArm.all
  end

  # GET /choosen_arms/1
  # GET /choosen_arms/1.json
  def show
  end

  # GET /choosen_arms/new
  def new
    @choosen_arm = ChoosenArm.new
  end

  # GET /choosen_arms/1/edit
  def edit
  end

  # POST /choosen_arms
  # POST /choosen_arms.json
  def create
    @choosen_arm = ChoosenArm.new(choosen_arm_params)

    respond_to do |format|
      if @choosen_arm.save
        format.html { redirect_to @choosen_arm, notice: 'Choosen arm was successfully created.' }
        format.json { render :show, status: :created, location: @choosen_arm }
      else
        format.html { render :new }
        format.json { render json: @choosen_arm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /choosen_arms/1
  # PATCH/PUT /choosen_arms/1.json
  def update
    respond_to do |format|
      if @choosen_arm.update(choosen_arm_params)
        format.html { redirect_to @choosen_arm, notice: 'Choosen arm was successfully updated.' }
        format.json { render :show, status: :ok, location: @choosen_arm }
      else
        format.html { render :edit }
        format.json { render json: @choosen_arm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choosen_arms/1
  # DELETE /choosen_arms/1.json
  def destroy
    @choosen_arm.destroy
    respond_to do |format|
      format.html { redirect_to choosen_arms_url, notice: 'Choosen arm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choosen_arm
      @choosen_arm = ChoosenArm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choosen_arm_params
      params.require(:choosen_arm).permit(:firearm_id)
    end
end
