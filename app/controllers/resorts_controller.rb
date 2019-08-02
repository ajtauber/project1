class ResortsController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]

  def index
    @resorts = Resort.all
  end

  def new
    @resort = Resort.new
  end

  def show
    @resort = Resort.find params[:id]
  end
  def create
    check_for_login
    @resort = Resort.new resort_params

    if @resort.save
      session[:resort_id] = @resort.id
      redirect_to root_path
    else
      render :new
    end
  end

  def check_for_login
    redirect_to login_path unless @current_customer.present?
  end

  def edit
    @resort = Resort.find params[:id]
  end

  private
  def resort_params
    params.require(:resort).permit(:name, :height, :lifts, :runs )
  end
end
