# frozen_string_literal: true

module CoingeckoRuby
  module Models
    class Coin
      attr_accessor :id, :symbol, :name,
                    :block_time_in_minutes, :categories, :localization,
                    :description, :links, :image,
                    :country_origin, :genesis_date, :market_cap_rank,
                    :coingecko_rank, :coingecko_score, :developer_score,
                    :community_score, :liquidity_score, :public_interest