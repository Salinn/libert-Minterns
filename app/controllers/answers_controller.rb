class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]
  before_action :set_answer_for_vote, only: [:upvote, :downvote]
  load_and_authorize_resource

  # GET /answers
  # GET /answers.json
  def index
    @answers = Answer.all
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
  end

  # GET /answers/new
  def new
    @answer = Answer.new
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = Answer.new(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to @answer, notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to @answer, notice: 'Answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to answers_url, notice: 'Answer was successfully destroyed.' }
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
    def set_answer
      @answer = Answer.find(params[:id])
    end
    
    #Look at changing this so it in DRY (look at faq controller), possibly put it in rating controller
    def set_answer_for_vote
      @answer = Answer.find(params[:answer_id])
      @rating = @answer.rating
      @vote_tracker = VoteTracker.find_or_create_by(user: current_user, rating: @rating)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:content, :user_id, :rating_id, :question_id)
    end
end
