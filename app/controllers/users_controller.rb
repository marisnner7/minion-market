class UsersController < ApplicationController
  before_action :find_user, only:; [:show]

  def show
    authorize @user
    @orders = Orders.where(user_id: @user.id)
    @products = Products.where(user_id: @user.id)
    @purchased_orders = @orders.each { |order| order.status == 'bought'}


  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
