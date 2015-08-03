class FaqsController < ApplicationController
  before_action :set_faq, only: [:show, :edit, :update, :destroy]
  before_action :set_faq_for_vote, only: [:upvote, :downvote]
  load_and_authorize_resource

  # GET /faqs
  # GET /faqs.json
  def index
    @faqs = Faq.joins(:rating).order('total').distinct.reverse.group_by(&:faq_section_id)
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
        format.html { redirect_to most_faqs_path, notice: 'Faq was successfully created.' }
        format.json { render :show, status: :created, location: @faq }
      else
        format.html { redirect_to ask_a_question_path, @faq.errors }
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
    up_votes = 0
    down_votes = 0
    if @vote_tracker.vote_type == 'up'
      redirect_to most_faqs_path, notice: 'Sorry, you have already up voted this question'
    elsif @vote_tracker.vote_type == 'down'
      up_votes = (@rating.up_votes + 1)
      down_votes = (@rating.down_votes - 1)
    else
      up_votes = (@rating.up_votes + 1)
      down_votes = (@rating.down_votes)
    end

    @rating.update(up_votes: up_votes, down_votes: down_votes, total: (up_votes - down_votes))
    @vote_tracker.update(vote_type: 'up')
    redirect_to most_faqs_path, notice: 'Thanks for voting'
  end
  
  def downvote
    up_votes = 0
    down_votes = 0
    if @vote_tracker.vote_type == 'down'
      redirect_to most_faqs_path, notice: 'Sorry, you have already down voted this question'
    elsif @vote_tracker.vote_type == 'up'
      up_votes = (@rating.up_votes - 1)
      down_votes = (@rating.down_votes + 1)
    else
      up_votes = (@rating.up_votes)
      down_votes = (@rating.down_votes + 1)
    end

    @rating.update(down_votes: down_votes, total: (up_votes - down_votes))
    @vote_tracker.update(vote_type: 'down')
    redirect_to most_faqs_path, notice: 'Thanks for voting'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faq
      @faq = Faq.find(params[:id])
    end
    
    def set_faq_for_vote
      @faq = Faq.find(params[:faq_id])
      @rating = @faq.rating
      @vote_tracker = VoteTracker.find_or_create_by(user: current_user, rating: @rating)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faq_params
      params.require(:faq).permit(:rating_id, :question_id, :user_id, :faq_section_id,
                                  question_attributes: [:title, :content, :user_id])
    end
end
