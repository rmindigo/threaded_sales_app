class User < ActiveRecord::Base
 has_many :posts, dependent: :destroy

 devise :database_authenticatable, :registerable,
 :recoverable, :rememberable, :trackable, :validatable
 
end
# Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable