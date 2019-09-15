class ApplicationController < ActionController::Base

  def hello
    render html: 'Hello World...testing'
  end

end 
