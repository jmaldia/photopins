class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true

  # Make password stronger
  # validates :password, :presence => true,
  #                     :confirmation => true,
  #                     :length => {:within => 6..40},
  #                     :on => :create,
  #                     :if => :password,
  #                     :format => {:with => /\A.*(?=.{10,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\@\#\$\%\^\&\+\=]).*\Z/ }

  has_many :pins
end