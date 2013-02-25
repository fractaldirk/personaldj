class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @milestones = Milestone.find(:all, :order => "finished_by ASC", :conditions => {:status => "1"}, :limit => "1")
    @tasks = Task.find(:all, :order => "finished_by ASC", :conditions => {:status => "1"})
  end
end
