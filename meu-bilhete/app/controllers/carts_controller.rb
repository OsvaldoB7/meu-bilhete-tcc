class CartsController < ApplicationController

    def show
        @cart = Cart.find(params[:id])
        @cart_items = @cart.cart_items.includes(:event)
      end


end
