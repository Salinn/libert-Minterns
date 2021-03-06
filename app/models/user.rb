class User < ActiveRecord::Base
  rolify
  mount_uploader :profile_picture, ImageUploader
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
         
  has_one :intern_summary
  
  has_many :vote_trakers
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
        user = User.create(first_name: data["first_name"],
                            last_name: data["last_name"],
                            provider:access_token.provider,
                            email: data["email"],
                            uid: access_token.uid ,
                            password: Devise.friendly_token[0,20],
                            remote_profile_picture_url: data["image"]
                          )
      end
    end
  end
end
