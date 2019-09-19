class ChartsController < ApplicationController

  def calories_logs
    render current_user.calory.group_by_day(:calories_number).count
  end

end
