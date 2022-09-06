class PositiveResponsesController < ApplicationController
  before_action :set_positive_response, only: %i[ show edit update destroy ]

  # GET /positive_responses or /positive_responses.json
  def index
    @positive_responses = PositiveResponse.all
  end

  # GET /positive_responses/1 or /positive_responses/1.json
  def show
  end

  # GET /positive_responses/new
  def new
    @positive_response = PositiveResponse.new
  end

  # GET /positive_responses/1/edit
  def edit
  end

  # POST /positive_responses or /positive_responses.json
  def create
    @positive_response = PositiveResponse.new(positive_response_params)

    respond_to do |format|
      if @positive_response.save
        format.html { redirect_to positive_response_url(@positive_response), notice: "Positive response was successfully created." }
        format.json { render :show, status: :created, location: @positive_response }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @positive_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /positive_responses/1 or /positive_responses/1.json
  def update
    respond_to do |format|
      if @positive_response.update(positive_response_params)
        format.html { redirect_to positive_response_url(@positive_response), notice: "Positive response was successfully updated." }
        format.json { render :show, status: :ok, location: @positive_response }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @positive_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /positive_responses/1 or /positive_responses/1.json
  def destroy
    @positive_response.destroy

    respond_to do |format|
      format.html { redirect_to positive_responses_url, notice: "Positive response was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_positive_response
      @positive_response = PositiveResponse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def positive_response_params
      params.require(:positive_response).permit(:station, :locateCode, :reason, :isNoteVisibleToContractor, :accountNameOfPositiveResponseProvider, :server_response, :ticket_id)
    end
end
