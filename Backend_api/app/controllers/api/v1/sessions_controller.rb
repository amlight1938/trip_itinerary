class Api::V1::SessionsController < ApplicationController
    include CurrentUserConcern

    def create
        
        user = User
                .find_by(username: login_params[:username])
                .try(:authenticate, login_params[:password])

        if user
            session[:user_id] = user.id
            render json: {
                status: :created,
                logged_in: true,
                user: user
            }
        else
            render json: {
                status: 401,
                errors: 'could not authenticate user'
            }
        end
    end

    def logged_in
        if @current_user
            render json: {
                logged_in: true,
                user: @current_user
            }
        else
            render json: {
                logged_in: false
            }
        end
    end

    def logout
        reset_session
        render json:{
            status: 200,
            logged_out: true
        }
    end

    private
    def login_params
        params.require(:user).permit(:username, :password)
    end
end