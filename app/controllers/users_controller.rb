class UsersController < ApplicationController

    # returns a user with an array of all items associated with that user
        def show
        users = User.find(params[:id])
        render json: users, include: :items
        end
end
