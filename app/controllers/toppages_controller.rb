class ToppagesController < ApplicationController
  def index
    @task = current_user.tasks.build 
      @tasks = current_user.tasks.order(id: :desc).page(params[:page])
  end
end
