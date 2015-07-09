class User < ActiveRecord::Base
  searchkick word_start: [:first_name, :last_name], text_start: [:first_name]
  scope :search_import, -> { includes(:major) }
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
         
  has_one :intern_summary
  
  has_many :vote_trakers, dependent: :destroy
  has_many :ratings, through: :vote_trakers
  
  belongs_to :major
  belongs_to :college
         
  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:provider => access_token.provider, :uid => access_token.uid ).first
    if user
      return user
    else
      registered_user = User.where(:email => access_token.info.email).first
      if registered_user
        return registered_user
      else
        user = User.create(first_name: data["name"],
          provider:access_token.provider,
          email: data["email"],
          uid: access_token.uid ,
          password: Devise.friendly_token[0,20],
        )
      end
   end
  end
end
