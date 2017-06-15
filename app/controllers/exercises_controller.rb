class ExercisesController < ApplicationController
  def index

  end

  def new
    @excercise = current_user.exercises.new
  end

  def show
  end
end
