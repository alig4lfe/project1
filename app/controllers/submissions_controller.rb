class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :edit, :update, :destroy]

  # GET /submissions
  # GET /submissions.json
  def index
    @submissions = Submission.all
  end

  # GET /submissions/1
  # GET /submissions/1.json
  def show
  end

  # GET /submissions/new
  def new
    @submission = Submission.new
  end

  # GET /submissions/1/edit
  def edit
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @submission = Submission.new(submission_params)

    respond_to do |format|
      if @submission.save
        format.html { redirect_to @submission, notice: 'Submission was successfully created.' }
        format.json { render :show, status: :created, location: @submission }
        SubmissionMailer.submission_success(@submission).deliver_later

      else
        format.html { render :new }
        format.json { render json: @submission.errors, status: :unprocessable_entity }

      end
    end
  end

  # PATCH/PUT /submissions/1
  # PATCH/PUT /submissions/1.json
  def update
    respond_to do |format|
      if @submission.update(submission_params)
        format.html { redirect_to @submission, notice: 'Submission was successfully updated.' }
        format.json { render :show, status: :ok, location: @submission }
      else
        format.html { render :edit }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submissions/1
  # DELETE /submissions/1.json
  def destroy
    @submission.destroy
    respond_to do |format|
      format.html { redirect_to submissions_url, notice: 'Submission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submission_params
      params.require(:submission).permit(:First_Name, :Last_Name, :Email, :Phone_Number, :Event_Date, :Event_Time, :Event_Name, :Event_Description, :Pick_Up_Date, :Drop_Off_Date, :Popcorn_Machine, :SnowKone_Machine, :Chocolate_Fountain, :Cotton_Candy_Machine, :Margaritaville, :Pancake_Griddle_A, :Pancake_Griddle_B, :Pancake_Griddle_C, :Epson_Projector, :Projector_Screen, :Fender_Speakers_Blutooth, :Fender_Speakers_Wired, :microphone_and_Stand, :Cornhole, :Kan_Jam, :Bocce_Ball, :Washer_Toss, :White_Canopy_A, :White_Canopy_B, :White_Canopy_C, :Strobe_Lights, :Red_Police_Light, :Six_Light_Helicopter, :Black_Light, :Extention_Cord_A, :Extention_Cord_B, :Extention_cord_C, :Water_Cooler_A, :Water_Cooler_B, :Water_Cooler_C, :Ice_Chest)
    end
end
