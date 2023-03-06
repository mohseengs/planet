class AuthenticationController < ApplicationController
    def login
    end

    def validate
        username = params[:username]
        password = params[:password]
        if @user = User.find_by_username(username)
            if @user.password == password
                session[:user_id] = @user.id 
                redirect_to root_path
                puts "success"
            else
                redirect_to "/login"
                puts "password not matched"
            end
        else
            redirect_to '/login'
            puts "username failed"
        end

        
    end
end