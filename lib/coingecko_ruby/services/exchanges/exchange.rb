# frozen_string_literal: true

module CoingeckoRuby::Services::Exchanges
  class Exchange < CoingeckoRuby::Services
    def fetch(id)
      output = super(CoingeckoRuby::Models::ApiLink.exc