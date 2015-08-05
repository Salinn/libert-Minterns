class StaticPagesController < ApplicationController
  before_action :authenticate_user!, :except => [:home, :public_images, :summaries]
  
  def home
    
  end 

  def public_images
    @photo_challenge = PhotoChallenge.offset(1).last
    @event = Event.last
    #@office = ??? TODO figure out how we are doing this
  end
  
  def intern_page
  end
  
  def summaries
    @tags = ActsAsTaggableOn::Tag.most_used
    @intern_summaries = InternSummary.includes(:user).paginate(:page => params[:page], :per_page => 3)
  end
  
  def most_faqs
    @faqs = Faq.includes(:rating, question: :answers).group_by(&:faq_section_id)
    @faq_sections = FaqSection.all
    @votes = VoteTracker.where(user: current_user)
  end
  
  def ask_a_question
    @faq_sections = FaqSection.all
    @faq = Faq.new
    @faq.build_question
  end
end