class PagesController < ApplicationController
  
  def home
    authorize! :home, :pages
  end
  
  def live
    authorize! :live, :pages
    @teams = Team.all
    @time = Time.now
  end
  
  def get_feed
    authorize! :live, :pages
    teams = Team.all
    time = Time.now
    render :json => { :teams => teams,
                      :time => time}
  end
end
