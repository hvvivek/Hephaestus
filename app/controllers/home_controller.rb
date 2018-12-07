class HomeController < ApplicationController
    def show
        begin
            if session[:user_id]
                @user = User.find(session[:user_id])
            end
        rescue
            session[:user_id] = nil
  	        redirect_to :home
        end
        # if !request.env['omniauth.auth'].nil?
        #     @user = User.from_omniauth(request.env['omniauth.auth'])
        #     logger.info request.env['omniauth.auth']
        # end
    end
end
