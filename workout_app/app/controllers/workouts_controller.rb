class WorkoutsController < ApplicationController
  before_action :find_workout, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!#, except: [:index, :show]

  def index
    @workouts = Workout.all.order("created_at DESC")
  end

  def show
  end

  def new
    @workout = current_user.workouts.build
  end

  def create
    @workout = current_user.workouts.build(workout_params)
    if @workout.save
      redirect_to @workout, notice: "Successfully created new workout"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @workout.update(workout_params)
      redirect_to @workout
    else
      render 'edit'
    end
  end

  def destroy
    @workout.destroy
    redirect_to root_path
  end

  private

  def workout_params
    params.require(:workout).permit(:date, :workout, :duration, :location, :mood, :image,
      exercises_attributes: [:id, :name, :description, :_destroy])
  end

  def find_workout
    @workout = Workout.find(params[:id])
  end
end
