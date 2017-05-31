class ArlesController < ApplicationController
 # before_action :set_arl, only: [:show, :edit, :update, :destroy]
   autocomplete :arl, :nombre

  before_action :authorize


  respond_to :html

  def index
    @arles = Arl.search(params[:search]).page(params[:page]).per_page(20)
  end

  def show
    @arl = Arl.find(params[:id])
  end

  def new
    @arl = Arl.new
  end

  def edit
    @arl = Arl.find(params[:id])
  end

  def create
    @arl = Arl.new(arl_params)
    render :action => :new unless @arl.save
  end

  def update
    @arl = Arl.find(params[:id])
    render :action => :edit unless @arl.update_attributes(arl_params)
  end

  def update
    @arl = Arl.find(params[:id])
    render :action => :edit unless @arl.update_attributes(arl_params)
  end

  def destroy
    @arl = Arl.find(params[:id])
    @arl.destroy
  end

  private
  def set_arl
    @arl = Arl.find(params[:id])
  end

  def arl_params
    params.require(:arl).permit!
  end
end
