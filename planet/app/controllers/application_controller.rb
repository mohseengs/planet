class ApplicationController < ActionController::Base
    before_action :check_login , except: [:login , :validate] 

    private 

    def check_login
        if session[:user_id] == nil
            puts session[:user_id]
            redirect_to "/login"
        else
            @user = User.find(session[:user_id])
        end
    end

end
