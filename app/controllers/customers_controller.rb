class CustomersController < ApplicationController
  def index
  end

  def new
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
  end


end
