# frozen_string_literal: true

module CoingeckoRuby
  module Models
    class Coin
      attr_accessor :id, :symbol, :name,
                    :block_time_in_minutes, :categories, :localization,
                    :description, :links, :image,
                    :country_origin, :genesis_date, :market_cap_rank,
                    :coingecko_rank, :coingecko_score, :developer_score,
                    :community_score, :liquidity_score, :public_interest_score,
                    :market_data, :community_data, :developer_data,
                    :public_interest_stats, :status_updates, :last_updated,
                    :tickers, :vs_currency, :ids, :current_price, :market_cap,
                    :total_volume, :high_24h, :low_24h, :price_change_24h,
