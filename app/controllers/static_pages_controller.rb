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
  end
  
  def summaries
    @intern_summaries = InternSummary.paginate(:page => params[:page], :per_page => 3)
  end
  
  def most_faqs
    @faqs = Faq.joins(:rating).order('total').distinct.reverse.group_by(&:faq_section_id)
    @faq_sections = FaqSection.includes(:faqs)
    @votes = VoteTracker.where(user: current_user)
  end
  
  def ask_a_question
    @faq_sections = FaqSection.all
    @faq = Faq.new
  end
  
  def users
    @search = User.ransack(params[:q])
    @users = @search.result.includes(:major, :college)
  end
end