class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :authorizations
  validates :name, :email, :presence => true
  devise :omniauthable, :omniauth_providers => [:facebook]
end
