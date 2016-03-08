class User < ActiveRecord::Base

	#include Mongoid::Document
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    ## Token Authenticatable
   acts_as_token_authenticatable
   #field :authentication_token
end
