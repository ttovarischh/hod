class EffectsController < ApplicationController
  before_action :set_effect, only: %i[ show edit update destroy ]

  # GET /effects or /effects.json
  def index
    @effects = Effect.all
    render json: @effects
  end

  # GET /effects/1 or /effects/1.json
  def show
    render json: @effect
  end

  # GET /effects/new
  def new
    @effect = Effect.new
  end

  # GET /effects/1/edit
  def edit
  end

  # POST /effects or /effects.json
  def create
    @effect = Effect.new(effect_params)

    respond_to do |format|
      if @effect.save
        format.html { redirect_to effect_url(@effect), notice: "Effect was successfully created." }
        format.json { render :show, status: :created, location: @effect }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @effect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /effects/1 or /effects/1.json
  def update
    respond_to do |format|
      if @effect.update(effect_params)
        format.html { redirect_to effect_url(@effect), notice: "Effect was successfully updated." }
        format.json { render :show, status: :ok, location: @effect }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @effect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /effects/1 or /effects/1.json
  def destroy
    @effect.destroy

    respond_to do |format|
      format.html { redirect_to effects_url, notice: "Effect was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_effect
      @effect = Effect.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def effect_params
      params.require(:effect).permit(:name, :descr, :image)
    end
end
