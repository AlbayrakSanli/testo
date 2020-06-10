class FurkansController < ApplicationController
  before_action :set_furkan, only: [:show, :edit, :update, :destroy]

  # GET /furkans
  # GET /furkans.json
  def index
    @furkans = Furkan.all
  end

  # GET /furkans/1
  # GET /furkans/1.json
  def show
  end

  # GET /furkans/new
  def new
    @furkan = Furkan.new
  end

  # GET /furkans/1/edit
  def edit
  end

  # POST /furkans
  # POST /furkans.json
  def create
    @furkan = Furkan.new(furkan_params)

    respond_to do |format|
      if @furkan.save
        format.html { redirect_to @furkan, notice: 'Furkan was successfully created.' }
        format.json { render :show, status: :created, location: @furkan }
      else
        format.html { render :new }
        format.json { render json: @furkan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /furkans/1
  # PATCH/PUT /furkans/1.json
  def update
    respond_to do |format|
      if @furkan.update(furkan_params)
        format.html { redirect_to @furkan, notice: 'Furkan was successfully updated.' }
        format.json { render :show, status: :ok, location: @furkan }
      else
        format.html { render :edit }
        format.json { render json: @furkan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /furkans/1
  # DELETE /furkans/1.json
  def destroy
    @furkan.destroy
    respond_to do |format|
      format.html { redirect_to furkans_url, notice: 'Furkan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_furkan
      @furkan = Furkan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def furkan_params
      params.fetch(:furkan, {})
    end
end
