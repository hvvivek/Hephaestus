class HomeController < ApplicationController
    def show
        if session[:user_id]
            @user = User.find(session[:user_id])
        end
        # if !request.env['omniauth.auth'].nil?
        #     @user = User.from_omniauth(request.env['omniauth.auth'])
        #     logger.info request.env['omniauth.auth']
        # end
    end
end
