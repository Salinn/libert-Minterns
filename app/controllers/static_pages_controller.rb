class StaticPagesController < ApplicationController
  before_action :authenticate_user!, :except => [:home, :public_images, :interns]
  helper_method :sort_column, :sort_direction
  
  def home
    
  end 

  def public_images
    @photo_challenge = PhotoChallenge.last
    @event = Event.last
    #@office = ??? TODO figure out how we are doing this
  end
  
  def intern_page
    @intern_summaries = InternSummary.paginate(:page => params[:page], :per_page => 3)
    @faq = Faq.new
    @faq.questions.build
    @faq_sections = FaqSection.all
  end
  
  def  interns
    if params[:query].present?
      @users = User.order(sort_column + " " + sort_direction).search(
        params[:query],
        page: params[:page],
        fields: [{first_name: :word_start}, {last_name: :word_start},
        {first_name: :text_start}])
    else
      @users = User.all.order(sort_column + " " + sort_direction)
    end
  end
  
  def sort_column
    params[:sort] || 'first_name'
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  end
end