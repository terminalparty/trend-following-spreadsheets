# frozen_string_literal: true

module CoingeckoRuby::Services::Exchanges
  class VolumeChart < CoingeckoRuby::Services
    def fetch(id, days)
      output = super(CoingeckoRuby::Models::ApiLink.exchange_volum