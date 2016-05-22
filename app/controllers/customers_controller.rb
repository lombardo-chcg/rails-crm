class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    get_customer_from_params
  end

  def new
    @customer = Customer.new
  end

  def edit
    get_customer_from_params
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to @customer
    else
      render 'new'
    end
  end

  def update
    get_customer_from_params

    if @customer.update(customer_params)
      redirect_to @customer
    else
      render 'new'
    end
  end

  def destroy
    get_customer_from_params.destroy

    redirect_to customers_path
  end

  private
  def get_customer_from_params
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name, :contact_info)
  end
end
