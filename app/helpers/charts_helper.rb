module ChartsHelper

  def calories_ingested_logs
    calories_ingested = current_user.calory.where("calories_type = ?", false)
    calories_burnt = current_user.calory.where("calories_type = ?", true)
    line_chart [
      {name: "Calories Ingested", data: calories_ingested.group_by_day(:created_at, last: 30).sum(:calories_number)},
      {name: "Calories Burnt", data: calories_burnt.group_by_day(:created_at, last: 30).sum(:calories_number)}
    ], xtitle: "Time - Last 30 Days", ytitle: "Consolidated Calories", download: true

  end
end
