class EpsesController < ApplicationController
 # before_action :set_eps, only: [:show, :edit, :update, :destroy]
  autocomplete :eps, :nombre

  before_action :authorize


  respond_to :html

  def index
     @epses = Eps.search(params[:search]).page(params[:page]).per_page(20)
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @eps = Eps.find(params[:id])
  end

  def new
    @eps = Eps.new
  end

  def edit
    @eps = Eps.find(params[:id])
  end

  def create
    @eps = Eps.new(eps_params)
    render :action => :new unless @eps.save
  end

  def update
    @eps = Eps.find(params[:id])
    render :action => :edit unless @eps.update_attributes(eps_params)
  end

  def update
    @eps = Eps.find(params[:id])
    render :action => :edit unless @eps.update_attributes(eps_params)
  end

  def destroy
    @eps = eps.find(params[:id])
    @eps.destroy
  end

  private
  def set_eps
    @eps = eps.find(params[:id])
  end

  def eps_params
    params.require(:eps).permit!
  end
end
