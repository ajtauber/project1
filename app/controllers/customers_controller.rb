class CustomersController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]
  before_action :check_for_admin, :only => [:index]

  def new
    @customer = Customer.new
  end
  
  def create
    @customer = Customer.new customer_params

    # existing_emails = Customer.pluck(:email)

    if @customer.save
      session[:customer_id] = @customer.id
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @customer = Customer.find params[:id]
  end

  private
  def customer_params
      params.require(:customer).permit(:email, :password, :password_confirmation)
  end
end
