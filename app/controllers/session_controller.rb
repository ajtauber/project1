class SessionController < ApplicationController
  def new
  end

  def create
    # find the user by their email address
    customer = Customer.find_by :email => params[:email]
    # encrypted password matches the encryped password in the database
    if customer.present? && customer.authenticate(params[:password])
      session[:customer_id] = customer.id
      redirect_to root_path # Change this to profile page or ticket page 
    else
      flash[:error_message] = "Invalid email or password"
      redirect_to login_path  #  show them the login form
    end
  end

  def destroy
    session[:customer_id] = nil
    redirect_to login_path
  end
end
