# frozen_string_literal: true

module CoingeckoRuby::Services::Simple
  class SupportedVsCurrencies < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLin