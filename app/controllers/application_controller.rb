class ApplicationController < ActionController::API
before_action :authenticate_user!
respond_to :json

def after_sign_in_path_for(user)

    return user_profiles_url
   
   
  end
end
