class ChartsController < ApplicationController

=begin
  def filterd_logs
      @calories_burnt = current_user.calory.where("calories_type = ?", true)

  end
=end
=begin
  def calories_logs
    @calories_log = current_user.calory.group_by_week(:created_at).sum(:calories_number)
    #raise params.inspect
    render json: @calories_log
    #raise params.inspect
    #render json: @calories_log
    #raise params.inspect
  end
=end
end
