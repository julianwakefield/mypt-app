class WorkoutsController < ApplicationController

    def new
        @workout = Workout.new 
    end

    def create
        # @workout = Workout.new(workout_params)
        # if workout.save!
        #     redirect_to workout_path(@workout)
        # else
        # render.new
        # end
    end

end
