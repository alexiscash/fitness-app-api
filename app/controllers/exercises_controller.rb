class ExercisesController < ApplicationController
    def index
        @exercises = Exercise.all 
        render json: @exercises
    end
    
    def new
    
    end
    
    def create
        @thang = Exercise.new(prams)

        if @thang.valid?
            @thang.save
            render json: @thang
        else
            render json: {'did it work': 'nah fam'}
        end
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def show
    
    end
    
    def destroy
    
    end

    private 

    def prams 
        params.require(:exercise).permit(:name, :workout_id)
    end
end
