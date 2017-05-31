class SystemReviewsController < ApplicationController
  # before_action :set_system_review, only: [:show, :edit, :update, :destroy]
  before_action :set_member

  def index
    @system_reviews = @clinic_history.system_reviews.all
  end

  def show
  end

  def new
    @system_review = SystemReview.new
  end

  def edit
  end

  def create
    @system_review = SystemReview.new(system_review_params)
    @system_review.clinic_history_id = @clinic_history.id

    respond_to do |format|
      if @system_review.save
        format.html { redirect_to new_clinic_history_physical_exam_path, notice: 'System review was successfully created.' }
        format.json { render :show, status: :created, location: @system_review }
      else
        format.html { render :new }
        format.json { render json: @system_review.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @system_review.update(system_review_params)
        format.html { redirect_to clinic_history_system_reviews_path(@clinic_history, @system_review), notice: 'System review was successfully updated.' }
        format.json { render :show, status: :ok, location: @system_review }
      else
        format.html { render :edit }
        format.json { render json: @system_review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @system_review.destroy
    respond_to do |format|
      format.html { redirect_to clinic_history_system_reviews_path(@clinic_history, @system_review), notice: 'System review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    def set_member
      @clinic_history = ClinicHistory.find(params[:clinic_history_id])
      @system_review = SystemReview.find(params[:id]) if params[:id]
    end

    def system_review_params
      params.require(:system_review).permit(:cardiovascular, :cardiovascular_description, :respiratory, :abdominal, :abdominal_description, :genito_urinario, :genito_urinario_description, :neurological, :neurological_description, :mental, :mental_description, :sense_organ, :sense_organ_description, :skeletal_muscle, :skeletal_muscle_description, :skin_and_appendages, :skin_and_appendages_description, :clinic_history_id)
    end
end

  
