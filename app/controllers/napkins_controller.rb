class NapkinsController < ApplicationController
  before_action :set_napkin, only: [:show, :update, :destroy]

  # GET /napkins
  def index
    pocket = Pocket.find_by(id: params[:pocket_id])
    @napkins = pocket.napkins

    render json: @napkins
  end

  #GET /all_napkins
  def all_napkins
    @napkins = Napkin.all

    render json: @napkins
  end

  # GET /napkins/1
  def show
    render json: @napkin
  end

  # POST /napkins
  def create
    @napkin = Napkin.new(napkin_params)

    if @napkin.save
      render json: @napkin, status: :created, location: @napkin
    else
      render json: @napkin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /napkins/1
  def update
    if @napkin.update(napkin_params)
      render json: @napkin
    else
      render json: @napkin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /napkins/1
  def destroy
    @napkin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_napkin
      @napkin = Napkin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def napkin_params
      params.require(:napkin).permit(:headline, :content, :sourcelink, :pocket_id)
    end
end
