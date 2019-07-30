class ApplicationController < ActionController::Base
  before_action :fetch_customer

  private
  # Set up a @user instance variable if we can find a user_id in this session
  def fetch_customer
    @current_customer = Customer.find_by :id => session[:customer_id] if session[:customer_id].present?
    session[:customer_id] = nil unless @current_customer.present?
  end

  def check_for_login
    redirect_to login_path unless @current_customer.present?
  end

  def check_for_admin
    redirect_to login_path unless (@current_customer.present? && @current_customer.admin?)
  end
end
