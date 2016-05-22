class FollowupsController < ApplicationController

  def create
    @customer = Customer.find(params[:customer_id])
    @followup = @customer.followups.create(followup_params)

    redirect_to customer_path(@customer)
  end

  def destroy
    @customer = Customer.find(params[:customer_id])
    @followup = @customer.followups.find(params[:id])
    @followup.destroy
    redirect_to customer_path(@customer)
  end

  private
  def followup_params
    params.require(:followup).permit(:comments)
  end
end
