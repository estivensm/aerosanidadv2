class AdditionalInformationsController < ApplicationController
  before_action :set_member

  def index
    @additional_informations = @clinic_history.additional_informations.all

  end

  def show
  end

  def new
    @additional_information = AdditionalInformation.new
  end

  def edit
  end

  def create
    @additional_information = AdditionalInformation.new(additional_information_params)
    @additional_information.clinic_history_id = @clinic_history.id




    respond_to do |format|
      if @additional_information.save
        format.html { redirect_to patients_path, notice: 'Additional information was successfully created.' }
        format.json { render :show, status: :created, location: @additional_information }
      else
        format.html { render :new }
        format.json { render json: @additional_information.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @personal_history.update(personal_history_params)
        format.html { redirect_to clinic_history_additional_informations_path(@clinic_history, @additional_information), notice: 'clinic_history actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @personal_history }
      else
        format.html { render :edit }
        format.json { render json: @personal_history.errors, status: :unprocessable_entity }
      end
    end
  end



  def destroy
    @personal_history.destroy
    respond_to do |format|
      format.html { redirect_to clinic_history_additional_informations_path(@clinic_history, @additional_information), notice: 'Historia Clinica Eliminada Correctamente.' }
      format.json { head :no_content }
    end
  end



  private

    def set_member
      @clinic_history = ClinicHistory.find(params[:clinic_history_id])
      @additional_information = AdditionalInformation.find(params[:id]) if params[:id]
    end

    def additional_information_params
      params.require(:additional_information).permit(:analysis, :print_diagnosed, :plan_and_treatment, :observations_recommendations)
    end
end
