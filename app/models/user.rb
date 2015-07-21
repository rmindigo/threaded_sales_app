class User < ActiveRecord::Base
 has_many :posts, dependent: :destroy
 has_many :jobs, dependent: :destroy
 mount_uploader :avatar, AvatarUploader

 devise :database_authenticatable, :registerable,
 :recoverable, :rememberable, :trackable, :validatable, :confirmable
 
end
# Include default devise modules. Others available are:
# :lockable, :timeoutable and :omniauthable