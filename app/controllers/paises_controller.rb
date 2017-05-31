class PaisesController < ApplicationController
  before_action :set_pais, only: [:show, :edit, :update, :destroy]

  def index
    @paises = Pais.all
  end

  def show
  end

  def new
    @pais = Pais.new
  end

  def edit
  end

  def create
    @pais = Pais.new(pais_params)

    respond_to do |format|
      if @pais.save
        format.html { redirect_to @pais, notice: 'Pais was successfully created.' }
        format.json { render :show, status: :created, location: @pais }
      else
        format.html { render :new }
        format.json { render json: @pais.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pais.update(pais_params)
        format.html { redirect_to @pais, notice: 'Pais was successfully updated.' }
        format.json { render :show, status: :ok, location: @pais }
      else
        format.html { render :edit }
        format.json { render json: @pais.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pais.destroy
    respond_to do |format|
      format.html { redirect_to paises_url, notice: 'Pais was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_pais
      @pais = Pais.find(params[:id])
    end

    def pais_params
      params.require(:pais).permit(:nombre)
    end
end
