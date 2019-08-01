class TicketsController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]
  # before_action :check_for_admin, :only => [:index]

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def show

  end
  def create
    @ticket = Ticket.new ticket_params

    if @ticket.save
      session[:ticket_id] = @ticket.id
      redirect_to root_path
    else
      render :new
  end


    def edit
      @ticket = Ticket.find params[:id]
    end

    def destroy
      session[:ticket_id] = nil
      redirect_to login_path
    end

    private
    def ticket_params
        params.require(:ticket).permit(:customer_name, :price, :duration)
    end
  end
end
