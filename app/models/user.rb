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

  enum gender: [ :female, :male, :unspecified ]
  enum faculty: [ :'Mechanical Engineering', :'Process_andSystem Engineering', :'Electrical Engineering and Information Technology', :'Computer Science', :Mathemathics, :'Natural Science', :Medicine, :'Humanities, Social Sciences and Educational Sciences', :'Economics and Management']
end
