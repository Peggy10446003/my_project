class BentosController < ApplicationController
  before_action :set_bento, only: [:show, :edit, :update, :destroy]

  # GET /bentos
  def index
    @bentos = Bento.all
  end

  # GET /bentos/1  
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
  def create
    @bento = Bento.new(bento_params)

    respond_to do |format|
      if @bento.save
        format.html { redirect_to @bento, notice: 'Bento was successfully created.' }       
      else
        format.html { render :new }        
      end
    end
  end

  # PATCH/PUT /bentos/1  
  def update
    respond_to do |format|
      if @bento.update(bento_params)
        format.html { redirect_to @bento, notice: '便當修改成功.' }        
      else
        format.html { render :edit }        
      end
    end
  end

  # DELETE /bentos/1  
  def destroy
    @bento.destroy
    respond_to do |format|
      format.html { redirect_to bentos_url, notice: '便當刪除成功.' }      
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
