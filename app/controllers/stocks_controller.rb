class StocksController < ApplicationController

    def search
      # byebug
      @stock = Stock.new_from_lookup(params[:stock])
      render 'users/my_portfolio'
    end

end
