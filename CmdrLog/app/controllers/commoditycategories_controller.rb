class CommoditycategoriesController < ApplicationController
  before_action :set_commoditycategory, only: [:show, :edit, :update, :destroy]

  # GET /commoditycategories
  # GET /commoditycategories.json
  def index
    @commoditycategories = Commoditycategory.all
  end

  # GET /commoditycategories/1
  # GET /commoditycategories/1.json
  def show
  end

  # GET /commoditycategories/new
  def new
    @commoditycategory = Commoditycategory.new
  end

  # GET /commoditycategories/1/edit
  def edit
  end

  # POST /commoditycategories
  # POST /commoditycategories.json
  def create
    @commoditycategory = Commoditycategory.new(commoditycategory_params)

    respond_to do |format|
      if @commoditycategory.save
        format.html { redirect_to @commoditycategory, notice: 'Commoditycategory was successfully created.' }
        format.json { render :show, status: :created, location: @commoditycategory }
      else
        format.html { render :new }
        format.json { render json: @commoditycategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commoditycategories/1
  # PATCH/PUT /commoditycategories/1.json
  def update
    respond_to do |format|
      if @commoditycategory.update(commoditycategory_params)
        format.html { redirect_to @commoditycategory, notice: 'Commoditycategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @commoditycategory }
      else
        format.html { render :edit }
        format.json { render json: @commoditycategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commoditycategories/1
  # DELETE /commoditycategories/1.json
  def destroy
    @commoditycategory.destroy
    respond_to do |format|
      format.html { redirect_to commoditycategories_url, notice: 'Commoditycategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commoditycategory
      @commoditycategory = Commoditycategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commoditycategory_params
      params.require(:commoditycategory).permit(:name)
    end
end
