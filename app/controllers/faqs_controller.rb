class FaqsController < ApplicationController
  before_action :set_faq, only: [:show, :edit, :update, :destroy]
  before_action :set_faq_for_vote, only: [:upvote, :downvote]

  # GET /faqs
  # GET /faqs.json
  def index
    @faqs = Faq.all
  end

  # GET /faqs/1
  # GET /faqs/1.json
  def show
  end

  # GET /faqs/new
  def new
    @faq = Faq.new
  end

  # GET /faqs/1/edit
  def edit
  end

  # POST /faqs
  # POST /faqs.json
  def create
    @faq = Faq.new(faq_params)

    respond_to do |format|
      if @faq.save
        format.html { redirect_to @faq, notice: 'Faq was successfully created.' }
        format.json { render :show, status: :created, location: @faq }
      else
        format.html { render :new }
        format.json { render json: @faq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faqs/1
  # PATCH/PUT /faqs/1.json
  def update
    respond_to do |format|
      if @faq.update(faq_params)
        format.html { redirect_to @faq, notice: 'Faq was successfully updated.' }
        format.json { render :show, status: :ok, location: @faq }
      else
        format.html { render :edit }
        format.json { render json: @faq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faqs/1
  # DELETE /faqs/1.json
  def destroy
    @faq.destroy
    respond_to do |format|
      format.html { redirect_to faqs_url, notice: 'Faq was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def upvote
    rating = @faq.ratings.first
    up_vote = (rating.up_votes + 1)
    rating.update(up_votes: up_vote, total: (up_vote - rating.down_votes))
    redirect_to :back, notice: 'Thanks for voting'
  end
  
  def downvote
    rating = @faq.ratings.first
    unless rating.total == 0
      down_vote = (rating.down_votes + 1)
      rating.update(down_votes: down_vote, total: (rating.up_votes - down_vote))
      redirect_to :back, notice: 'Thanks for voting'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faq
      @faq = Faq.find(params[:id])
    end
    
    def set_faq_for_vote
      @faq = Faq.find(params[:faq_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faq_params
      params.require(:faq).permit(:rating_id, :question_id, :user_id, :faq_section_id,
                                  questions_attributes: [:title, :content, :user_id])
    end
end
