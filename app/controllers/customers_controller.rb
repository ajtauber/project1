class CustomersController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]
  before_action :check_for_admin, :only => [:index]

  def new
    @customer = Customer.new
  end
end
