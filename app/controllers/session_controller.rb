class SessionController < ApplicationController
  def new
  end

  def create
    # find the user by their email address
    customer = Customer.find_by :email => params[:email]
    # encrypted password matches the encryped password in the database
    if customer.present? && customer.authenticate(params[:password])
      redirect_to root_path
    else
      flash[:error_message]
      redirect_to login_path  #  show them the login form
    end
  end

  def destroy
    session[:customer_id] = nil
    redirect_to login_path
  end
end
