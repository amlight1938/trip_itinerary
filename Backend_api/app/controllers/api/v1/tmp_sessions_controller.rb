class SessionsController < ApplicationController

    def create
        @user = User.find_by(username: session_params[:username])

        if @user && @usr.authenticate(session_params[:password])
            login
            render json: {
                logged_in: true,
                user: @user
            }
        else
            render json: {
                status: 401,
                errors: 'could not find or authenticate user'
            }
        end
    end

    def is_logged_in

    end
end