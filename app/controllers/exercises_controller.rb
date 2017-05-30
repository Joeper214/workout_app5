class ExercisesController < ApplicationController
  def index

  end

  def new
    @excercise = curret_user.exercises.new
  end
end
