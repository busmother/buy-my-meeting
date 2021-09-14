class Api::VI::UsersController < Api::V1::ApplicationController

    def index
        users = User.all
        render json: UserSerializer.new(users)
    end

    def create
        user = User.find_or_create_by(email: user_params[:email])
        render json: UserSerializer.new(user)
    end

    def show
        user = User.find_by(id: params[:id])
        render json: UserSerializer.new(user)
    end

    private

    def user_params
        params.require(:user).permit(:email)
    end

end