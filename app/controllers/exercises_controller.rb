class ExercisesController < ApplicationController

    def index

      @exercises = Exercise.all
      @search = params["search"]
  
      # if @search.present?
      #   @body_parts = @search["body_parts"]
      #   @exercises = Exercise.where("body_parts LIKE ?", "%#{@body_parts}%")
      # end
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
