class ExercisesController < ApplicationController

    def index

      @workouts = []
      @wrong = " "

      if params[:query].present?
        @exercises = Exercise.search_by_body_parts(params[:query])
        @workout = @exercises.sample(3)
      elsif params[:query].present?
        Exercise.search_by_body_parts(params[:query]) == false
        @wrong = "ok"
      else
        @exercises = Exercise.all
        @workout = @exercises
      end
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

    private

    def exercise_params
      params.require(:exercise).permit(:name, :body_parts)
    end


end
