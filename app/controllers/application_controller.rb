class ApplicationController < ActionController::API

acts_as_token_authentication_handler_for User

before_action :authenticate_user!
respond_to :json

def after_sign_in_path_for(user)

    return user_profiles_url
   
   
  end
end
