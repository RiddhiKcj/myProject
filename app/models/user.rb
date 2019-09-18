class User < ApplicationRecord
  has_many :selected_apis , dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :trackable,:omniauthable

  validates_presence_of :username 
  validates_uniqueness_of :username, :email, :on => :create
  # validates_presence_of :email, :on => :create
  # validates_format_of :username, :with => /^[-(\w+\s?)*\s._@]+$/i, :multiline => true, :allow_blank => true, :message => "should only contain letter, numbers, or .-_@"


  def self.from_omniauth(auth)
  	where(provider: auth.provider, uid: auth.uid).first_or_create do | user |
  		user.provider = auth.provider
  		user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.username = auth.info.username
      if user.username.blank?
        user.username = auth.info.name
      end
      user.skip_confirmation!
      user.save
  	end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"]) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  def password_required?
    super && provider.blank?
  end


end


