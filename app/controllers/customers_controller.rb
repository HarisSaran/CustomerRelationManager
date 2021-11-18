class CustomersController < ApplicationController
  def index
    @customers = Customer.includes(:customer).all
  end

  def show
    @customer = Customer.find(params[:id])
  end
end
