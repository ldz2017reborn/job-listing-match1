class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_is_admin
     if !current_user.admin?
      flash[:alert] = 'You are not admin'
      redirect_to root_path
    end
  end

  def index
    @application = Application.find(params[:id])
    @jobs = @application.jobs.recent.paginate(:page => params[:page], :per_page => 5)
  end
end
