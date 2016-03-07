class Users::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    super
  end
  def create
    byebug
    self.resource = warden.authenticate!(auth_options)
    
    
    sign_in(resource_name, resource)
    
    
    
    #redirect_to user_profiles_url
    respond_with resource, location: after_sign_in_path_for(resource)

  #byebug

end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
