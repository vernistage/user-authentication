class User < ActiveRecord::Base
  has_many :jobs

  validates_associated :jobs
  validates_presence_of :first_name, :last_name, :email, :password
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
