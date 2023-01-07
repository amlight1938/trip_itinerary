class Api::V1::RegistrationsController < ApplicationController
    def create
        user = User.new(
            username: reg_params[:username],
            password: reg_params[:password],
            password_confirmation: reg_params[:password_confirmation]
        )

        if user.save
            session[:user_id] = user.id
            render json: {
                status: :created,
                user: user,
                errors: nil
            }
        else
            render json: {
                status: 500,
                errors: user.errors.full_messages[0]
            }
        end
    end

    private
    def reg_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end