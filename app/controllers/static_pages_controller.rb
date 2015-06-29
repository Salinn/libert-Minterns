class StaticPagesController < ApplicationController
  def home
    
  end 

  def public_images
    @photo_challenge = PhotoChallenge.last
    @event = Event.last
    #@office = ??? TODO figure out how we are doing this
  end
  
  def intern_page
    @intern_summaries = InternSummary.all
    @faq = Faq.new
    @faq.questions.build
    @faq_sections = FaqSection.all
  end
end