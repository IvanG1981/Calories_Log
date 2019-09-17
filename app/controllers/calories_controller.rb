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
    @calory = Calory.find(params[:id])
  end

  def index
    #current_user
    @calories = Calory.all
  end

  def edit
    id = params[:id]
    @calory = Calory.find(id)

  end

  def update
    @calory = Calory.find(params[:id])
    #current_user
    if @calory.update(calory_params)
      redirect_to calories_path
      flash[:success] = 'Calory Log Updated'
    else
      render 'edit'
    end

  end

  def destroy
    @calory = Calory.find(params[:id])
    @calory.delete
    redirect_to root_path
    flash[:warning] = 'Calories Log Deleted'
  end


  private

  def calory_params
    params.require(:calory).permit(:calories_number, :calories_type, :calories_related_activity, :user_id)
  end
end
