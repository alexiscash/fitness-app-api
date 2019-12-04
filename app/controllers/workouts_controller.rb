class WorkoutsController < ApplicationController
    def index
        @workouts = Workout.all 
        render json: @workouts, include: [:exercises], only: [:name]
    end
    
    def new
    
    end
    
    def create
        
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def show
    
    end
    
    def destroy
    
    end
end
