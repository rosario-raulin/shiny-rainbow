class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :dob, presence: true
  validates :gender, presence: true
  validates :faculty, presence: true
  
end
