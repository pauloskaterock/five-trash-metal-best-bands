class ListFiveTrashMetalBestBandsController < ApplicationController
  before_action :set_list_five_trash_metal_best_band, only: %i[ show edit update destroy ]

  # GET /list_five_trash_metal_best_bands or /list_five_trash_metal_best_bands.json
  def index
    @list_five_trash_metal_best_bands = ListFiveTrashMetalBestBand.all
  end

  # GET /list_five_trash_metal_best_bands/1 or /list_five_trash_metal_best_bands/1.json
  def show
  end

  # GET /list_five_trash_metal_best_bands/new
  def new
    @list_five_trash_metal_best_band = ListFiveTrashMetalBestBand.new
  end

  # GET /list_five_trash_metal_best_bands/1/edit
  def edit
  end

  # POST /list_five_trash_metal_best_bands or /list_five_trash_metal_best_bands.json
  def create
    @list_five_trash_metal_best_band = ListFiveTrashMetalBestBand.new(list_five_trash_metal_best_band_params)

    respond_to do |format|
      if @list_five_trash_metal_best_band.save
        format.html { redirect_to list_five_trash_metal_best_band_url(@list_five_trash_metal_best_band), notice: "List five trash metal best band was successfully created." }
        format.json { render :show, status: :created, location: @list_five_trash_metal_best_band }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @list_five_trash_metal_best_band.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_five_trash_metal_best_bands/1 or /list_five_trash_metal_best_bands/1.json
  def update
    respond_to do |format|
      if @list_five_trash_metal_best_band.update(list_five_trash_metal_best_band_params)
        format.html { redirect_to list_five_trash_metal_best_band_url(@list_five_trash_metal_best_band), notice: "List five trash metal best band was successfully updated." }
        format.json { render :show, status: :ok, location: @list_five_trash_metal_best_band }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @list_five_trash_metal_best_band.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_five_trash_metal_best_bands/1 or /list_five_trash_metal_best_bands/1.json
  def destroy
    @list_five_trash_metal_best_band.destroy

    respond_to do |format|
      format.html { redirect_to list_five_trash_metal_best_bands_url, notice: "List five trash metal best band was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_five_trash_metal_best_band
      @list_five_trash_metal_best_band = ListFiveTrashMetalBestBand.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def list_five_trash_metal_best_band_params
      params.require(:list_five_trash_metal_best_band).permit(:title, :description, :text)
    end
end
