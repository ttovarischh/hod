class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :games

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :avatar, AvatarUploader
  
  # def avatar_thumbnail
  #   if avatar?
  #     avatar
  #   else 
  #     "/default_profile.jpg"
  #   end
  # end
end
