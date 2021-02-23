class ExercisesController < ApplicationController

    def index
        @exercises = Exercise.all
    end
    
    def new
        @exercise = Exercise.new 
    end


    def create
        @exercise = Exercise.new(exercise_params)
        if exercise.save!
            redirect_to exercise_path(@exercise)
        else
        render.new
        end
    end

    


end
