class PartnersController < ApplicationController

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new(partner_params)
    binding.pry
    if @partner.save 
      redirect_to root_path
    else 
      render action: :new
    end
  end

  private
  def partner_params
    params.require(:partner).permit(:firstname, :lastname, :role, :email, :phonenumber, :decision_id, :hobby, :stance, :personality, :habit).merge(customer_id: params[:customer_id])
  end
end
