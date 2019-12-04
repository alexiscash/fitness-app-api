class UsersController < ApplicationController
    def index
        @users = User.all 
        render json: @users 
    end
    
    def new
    
    end
    
    def create
        @user = User.new(prams)

        if @user.valid?
            @user.save
            render json: @user
        else
            render json: {error: 'exercise already exists'}
        end
    
    end
    
    def edit
    
    end
    
    def update
        @user = User.find(params[:id])
        @user.update(prams)
        render json: @user
    end
    
    def show
    
    end
    
    def destroy
        # @user = User.find_by()
    end

    private

    def prams 
        params.require(:user).permit(:user_name, :password)
    end

end
