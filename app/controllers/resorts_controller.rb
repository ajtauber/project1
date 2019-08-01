class ResortsController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def show

  end
  def create
    check_for_login
    @ticket = Ticket.new ticket_params

    if @ticket.save
      session[:ticket_id] = @ticket.id
      redirect_to root_path
    else
      render :new
    end
  end

  def check_for_login
    redirect_to login_path unless @current_customer.present?
  end

  def edit
    @ticket = Ticket.find params[:id]
  end

  private
  def customer_params
    params.require(:customer).permit(:email, :password, :password_confirmation)
  end
end
