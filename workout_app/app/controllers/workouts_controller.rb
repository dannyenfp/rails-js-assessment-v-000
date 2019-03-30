class WorkoutsController < ApplicationController
  before_action :find_workout, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!#, except: [:index, :show]
#this becomes confusing when all the routes are in the manner of users/:id/workouts
#how should i structure this, and this was almost impossible

##Begin to this: 
# Must render at least one index page (index resource - 'list of things') 
# via JavaScript and an Active Model Serialization JSON Backend.

# For example: in a blog domain with users and posts, 
# you might display the index of the user's 
# posts on the users show page, fetching the posts via a AJAX GET request, with the backend rendering the posts in JSON format, and then appending the posts to the page.



  def index
    if params[:user_id]
      @user = User.find(params[:user_id])
      @workouts = @user.workouts.order("created_at DESC")
    else 
    @workouts = Workout.all.order("created_at DESC")
  end
end

# def show
#   @post = Post.find(params[:id])
#   respond_to do |format|
#     format.html { render :show }      # Render post in HTML format
#     format.json { render json: @post} # Render post in JSON format
#   end
# end

  def show
    @workout = Work.find(params[:id])
    respond_to do |format|
      format.html { render :show }      # Render post in HTML format
      format.json { render json: @post} # Render post in JSON format
    end
   end      



  def new
    @workout = current_user.workouts.build
  end

  def create
    @workout = current_user.workouts.build(workout_params)
    if @workout.save
      redirect_to user_workout_path(current_user, @workout), notice: "Successfully created new workout"
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
