class WelcomeController < ApplicationController
  def index
  end

 def redirect
  redirect_to "/games/#{params[:new]}"
  end
end
