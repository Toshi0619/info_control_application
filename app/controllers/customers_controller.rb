class CustomersController < ApplicationController
  def index
    @customers = Customer.all.order('created_at DESC')
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    binding.pry
    if @customer.save #保存されるとマイページへリダイレクト
      redirect_to root_path
    else 
      render action: :new
    end
  end

  def show
    @customer = Customer.find(params[:id])
    @partners = Partner.where(customer_id: params[:id])
    @gcustomers = Gcustomer.where(customer_id: params[:id])
    @troubles = Trouble.where(customer_id: params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to customer_path(@customer.id)
    else
      render :edit
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :address, :category_id, :product, :employee, :sales, :settlement_id, :takeover, :memo, :firstdate, user_ids: [])
  end


end
