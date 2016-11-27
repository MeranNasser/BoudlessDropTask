class SubmissionsController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  before_action :set_form
  
  # GET /submissions
  # GET /submissions.json
  def index
    raise ActionController::RoutingError.new("Not Found") if @form.user_id != current_user.id
    @submissions = Submission.where(form_id: @form.id)
  end


  # GET /submissions/new
  def new
    @submission = Submission.new
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @answers = params[:answers]
    @submission = Submission.new(submission_params)
    @submission.answers = @answers.delete_if { |k, v| v.blank? }
    

    respond_to do |format|
      if @submission.save
        format.html { render text: 'Submission was successfully created. Thank You!!' }
      else
        format.html { render :new }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  
    def set_form
      @form = Form.find(params[:form_id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def submission_params
      params.require(:submission).permit(:form_id)
    end
end
