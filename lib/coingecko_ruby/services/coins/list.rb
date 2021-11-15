# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class List < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.list