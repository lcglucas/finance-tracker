require "alphavantage"

Alphavantage.configure do |config|
  config.api_key = Rails.application.credentials.alphavantage_client[:sandbox_api_key]
end

class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    quote = Alphavantage::TimeSeries.new(symbol: ticker_symbol).quote
    quote.price
  end
end
