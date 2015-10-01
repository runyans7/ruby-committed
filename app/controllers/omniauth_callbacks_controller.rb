class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter
    
   user = User.from_omniauth(request.env["omniauth.auth"])

   if user.save
     sign_in_and_redirect user
   else
     redirect_to new_user_registration_path
   end
  end
end
