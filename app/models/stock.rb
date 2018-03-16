class Stock < ApplicationRecord

  def self.new_from_lookup(ticker_symbol)

    looked_up_stock = StockQuote::Stock.quote(ticker_symbol)

    price = strip_commas(looked_up_stock.l)

    new(name: looked_up_stock.name, ticker: looked_up_stock.symbol, last_price: price)

  end

# remove the comments from the number coming in
  def self.strip_commas(number)
    # gsub takes 2 arguments, 1st is what you want to remove, 2nd is what you want to replace it with
    number.gsub(",", "")
  end
end
