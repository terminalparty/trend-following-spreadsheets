# frozen_string_literal: true

module CoingeckoRuby
  module Models
    class Coin
      attr_accessor :id, :symbol, :name,
                    :block_time_in_minutes, :categories, :localization,
           