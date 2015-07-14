class StaticPagesController < ApplicationController
  before_action :authenticate_user!, :except => [:home, :public_images, :users]
  
  def home
    
  end 

  def public_images
    @photo_challenge = PhotoChallenge.last
    @event = Event.last
    #@office = ??? TODO figure out how we are doing this
  end
  
  def intern_page
    @intern_summaries = InternSummary.paginate(:page => params[:page], :per_page => 3).includes(:user)
    @faq = Faq.new
    @faq.questions.build
    @faq_sections = FaqSection.all.includes(:faqs)
    @votes = VoteTracker.where(user: current_user)
  end
  
  def users
    @search = User.ransack(params[:q])
    @users = @search.result.includes(:major, :college)
  end
end