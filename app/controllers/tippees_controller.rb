class TippeesController < ApplicationController
  before_action :set_tippee, only: [:show, :update, :destroy]

  # GET /tippees
  def index
    @tippees = Tippee.all

    render json: @tippees
  end

  # GET /tippees/1
  def show
    render json: @tippee
  end

  # POST /tippees
  def create
    @tippee = Tippee.new(tippee_params)

    if @tippee.save
      render json: @tippee, status: :created, location: @tippee
    else
      render json: @tippee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tippees/1
  def update
    if @tippee.update(tippee_params)
      render json: @tippee
    else
      render json: @tippee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tippees/1
  def destroy
    @tippee.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tippee
      @tippee = Tippee.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tippee_params
      params.require(:tippee).permit(:first_name, :last_name, :photo_url, :payment_url)
    end
end
