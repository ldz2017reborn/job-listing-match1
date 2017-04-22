class WelcomeController < ApplicationController
  def index
    flash[:notice] = "Ruby 之家欢迎你！"
  end
end
