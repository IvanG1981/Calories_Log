class CaloriesController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]
  #skip_before_action :verify_authenticity_token

  def new
    @calory = Calory.new
    #@user = current_user
    #raise params.inspect
  end

  def create
    current_user
    @calory = Calory.new(calory_params)
    @calory.user = current_user
    if @calory.save
         flash[:success] = 'New Calories Log Created'
         redirect_to calories_path
    else
         flash.now[:danger] = 'Error while creating Calories Log'
         render "new"
    end
  end

  def show
  end

  def index
    #current_user
    @calories = Calory.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def calory_params
    params.require(:calory).permit(:calories_number, :calories_type, :calories_related_activity, :user_id)
  end
end
