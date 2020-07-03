class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def show
    authorize @user
    @orders = Order.where(user_id: @user.id)
    @products = Product.where(user_id: @user.id)
    @purchased_orders = @orders.each { |order| order.status == "bought"}

     @markers = [{
      lat: @user.latitude,
      lng: @user.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { user: @user }),
      image_url: helpers.asset_url('logo.png')
    }]
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
