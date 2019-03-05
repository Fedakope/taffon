class OrdersController < ApplicationController
  
  def create
    job = Job.find(params[:job_id])
    order = Order.create!(job_sku: job.job_sku, amount: job.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end

end
