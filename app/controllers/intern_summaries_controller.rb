class InternSummariesController < ApplicationController
  before_action :set_intern_summary, only: [:show, :edit, :update, :destroy]

  # GET /intern_summaries
  # GET /intern_summaries.json
  def index
    @intern_summaries = InternSummary.all
  end

  # GET /intern_summaries/1
  # GET /intern_summaries/1.json
  def show
  end

  # GET /intern_summaries/new
  def new
    @intern_summary = InternSummary.new
  end

  # GET /intern_summaries/1/edit
  def edit
  end

  # POST /intern_summaries
  # POST /intern_summaries.json
  def create
    @intern_summary = InternSummary.new(intern_summary_params)

    respond_to do |format|
      if @intern_summary.save
        format.html { redirect_to @intern_summary, notice: 'Intern summary was successfully created.' }
        format.json { render :show, status: :created, location: @intern_summary }
      else
        format.html { render :new }
        format.json { render json: @intern_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intern_summaries/1
  # PATCH/PUT /intern_summaries/1.json
  def update
    respond_to do |format|
      if @intern_summary.update(intern_summary_params)
        format.html { redirect_to @intern_summary, notice: 'Intern summary was successfully updated.' }
        format.json { render :show, status: :ok, location: @intern_summary }
      else
        format.html { render :edit }
        format.json { render json: @intern_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intern_summaries/1
  # DELETE /intern_summaries/1.json
  def destroy
    @intern_summary.destroy
    respond_to do |format|
      format.html { redirect_to intern_summaries_url, notice: 'Intern summary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intern_summary
      @intern_summary = InternSummary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intern_summary_params
      params.require(:intern_summary).permit(:title, :content, :content, :user_id)
    end
end
