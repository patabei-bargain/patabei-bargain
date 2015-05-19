class CproductsController < ApplicationController
  before_action :set_cproduct, only: [:show, :edit, :update, :destroy]

  # GET /cproducts
  # GET /cproducts.json
  def index
    @cproducts = Cproduct.all
  end

  # GET /cproducts/1
  # GET /cproducts/1.json
  def show
  end

  # GET /cproducts/new
  def new
    @cproduct = Cproduct.new
  end

  # GET /cproducts/1/edit
  def edit
  end

  # POST /cproducts
  # POST /cproducts.json
  def create
    @cproduct = Cproduct.new(cproduct_params)

    respond_to do |format|
      if @cproduct.save
        format.html { redirect_to @cproduct, notice: 'Cproduct was successfully created.' }
        format.json { render :show, status: :created, location: @cproduct }
      else
        format.html { render :new }
        format.json { render json: @cproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cproducts/1
  # PATCH/PUT /cproducts/1.json
  def update
    respond_to do |format|
      if @cproduct.update(cproduct_params)
        format.html { redirect_to @cproduct, notice: 'Cproduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @cproduct }
      else
        format.html { render :edit }
        format.json { render json: @cproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cproducts/1
  # DELETE /cproducts/1.json
  def destroy
    @cproduct.destroy
    respond_to do |format|
      format.html { redirect_to cproducts_url, notice: 'Cproduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cproduct
      @cproduct = Cproduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cproduct_params
      params.require(:cproduct).permit(:title, :image)
    end
end
