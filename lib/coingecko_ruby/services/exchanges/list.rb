# frozen_string_literal: true

module CoingeckoRuby::Services::Exchanges
  class List < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.exchanges_li