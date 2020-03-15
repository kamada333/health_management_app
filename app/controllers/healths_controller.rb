class HealthsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_health, only: [:show, :edit, :update, :destroy]

  # GET /healths
  def index
    @healths = Health.all
  end

  # GET /healths/1
  def show
  end

  # GET /healths/new
  def new
    @health = Health.new
  end

  # GET /healths/1/edit
  def edit
  end

  # POST /healths
  def create
    @health = Health.new(health_params)

    if @health.save
      redirect_to @health, notice: 'Health was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /healths/1
  def update
    if @health.update(health_params)
      redirect_to @health, notice: 'Health was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /healths/1
  def destroy
    @health.destroy
    redirect_to healths_url, notice: 'Health was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health
      @health = Health.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health_params
      params.require(:health).permit(:date, :body_weight, :condition)
    end
end
