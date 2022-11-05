class UsersController < ApplicationController
    def index
        @user = User.all
    end

    def show
        @user = User.find(params[:id])
        authorize(@user)
    end

    def edit
        @user = User.find_by(id: params[:id])
        authorize(@user)
    end
end
