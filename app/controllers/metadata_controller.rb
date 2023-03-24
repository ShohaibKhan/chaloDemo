class MetadataController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_metadatum, only: %i[ show edit update destroy ]

  # GET /metadata or /metadata.json
  def index
    
    @metadata = Metadatum.all
  end
  # GET /metadata/1 or /metadata/1.json
  def show
  end

  # GET /metadata/new
  def new
    @metadatum = Metadatum.new
  end

  # GET /metadata/1/edit
  def edit
  end

  # POST /metadata or /metadata.json
  def create
    @metadatum = Metadatum.new(metadatum_params)

    respond_to do |format|
      if @metadatum.save
        format.html { redirect_to metadatum_url(@metadatum), notice: "Metadatum was successfully created." }
        format.json { render :show, status: :created, location: @metadatum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @metadatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metadata/1 or /metadata/1.json
  def update
    respond_to do |format|
      if @metadatum.update(metadatum_params)
        format.html { redirect_to metadatum_url(@metadatum), notice: "Metadatum was successfully updated." }
        format.json { render :show, status: :ok, location: @metadatum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @metadatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metadata/1 or /metadata/1.json
  def destroy
    @metadatum.destroy

    respond_to do |format|
      format.html { redirect_to metadata_url, notice: "Metadatum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metadatum
      @metadatum = Metadatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def metadatum_params
      params.require(:metadatum).permit(:waiting_period, :car_id, :variant_id, :pincode_id)
    end
end
