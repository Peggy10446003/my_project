class BentosController < ApplicationController
  before_action :set_bento, only: [:show, :edit, :update, :destroy]

  # GET /bentos
  # GET /bentos.json
  def index
    @bentos = Bento.all
  end

  # GET /bentos/1
  # GET /bentos/1.json
  def show
  end

  # GET /bentos/new
  def new
    @bento = Bento.new
  end

  # GET /bentos/1/edit
  def edit
  end

  # POST /bentos
  # POST /bentos.json
  def create
    @bento = Bento.new(bento_params)

    respond_to do |format|
      if @bento.save
        format.html { redirect_to @bento, notice: 'Bento was successfully created.' }
        format.json { render :show, status: :created, location: @bento }
      else
        format.html { render :new }
        format.json { render json: @bento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bentos/1
  # PATCH/PUT /bentos/1.json
  def update
    respond_to do |format|
      if @bento.update(bento_params)
        format.html { redirect_to @bento, notice: 'Bento was successfully updated.' }
        format.json { render :show, status: :ok, location: @bento }
      else
        format.html { render :edit }
        format.json { render json: @bento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bentos/1
  # DELETE /bentos/1.json
  def destroy
    @bento.destroy
    respond_to do |format|
      format.html { redirect_to bentos_url, notice: 'Bento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bento
      @bento = Bento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bento_params
      params.require(:bento).permit(:bento_name, :price, :content)
    end
end
