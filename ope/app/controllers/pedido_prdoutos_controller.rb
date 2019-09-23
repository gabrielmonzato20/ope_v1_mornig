class PedidoPrdoutosController < ApplicationController
  before_action :set_pedido_prdouto, only: [:show, :edit, :update, :destroy]

  # GET /pedido_prdoutos
  # GET /pedido_prdoutos.json
  def index
    @pedido_prdoutos = PedidoPrdouto.all
  end

  # GET /pedido_prdoutos/1
  # GET /pedido_prdoutos/1.json
  def show
  end

  # GET /pedido_prdoutos/new
  def new
    @pedido_prdouto = PedidoPrdouto.new
  end

  # GET /pedido_prdoutos/1/edit
  def edit
  end

  # POST /pedido_prdoutos
  # POST /pedido_prdoutos.json
  def create
    @pedido_prdouto = PedidoPrdouto.new(pedido_prdouto_params)

    respond_to do |format|
      if @pedido_prdouto.save
        format.html { redirect_to @pedido_prdouto, notice: 'Pedido prdouto was successfully created.' }
        format.json { render :show, status: :created, location: @pedido_prdouto }
      else
        format.html { render :new }
        format.json { render json: @pedido_prdouto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedido_prdoutos/1
  # PATCH/PUT /pedido_prdoutos/1.json
  def update
    respond_to do |format|
      if @pedido_prdouto.update(pedido_prdouto_params)
        format.html { redirect_to @pedido_prdouto, notice: 'Pedido prdouto was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido_prdouto }
      else
        format.html { render :edit }
        format.json { render json: @pedido_prdouto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedido_prdoutos/1
  # DELETE /pedido_prdoutos/1.json
  def destroy
    @pedido_prdouto.destroy
    respond_to do |format|
      format.html { redirect_to pedido_prdoutos_url, notice: 'Pedido prdouto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido_prdouto
      @pedido_prdouto = PedidoPrdouto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_prdouto_params
      params.require(:pedido_prdouto).permit(:pedido_id, :produto_id)
    end
end
