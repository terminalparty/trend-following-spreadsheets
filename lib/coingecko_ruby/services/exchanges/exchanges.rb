# frozen_string_literal: true

module CoingeckoRuby::Services::Exchanges
  class Exchanges < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.exchanges_ur