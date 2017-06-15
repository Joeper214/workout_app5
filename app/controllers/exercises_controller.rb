class ExercisesController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def new
    @exercise = current_user.exercises.new
  end

  def show
  end

  def create
  end

end
