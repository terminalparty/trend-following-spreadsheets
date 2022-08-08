# frozen_string_literal: true

module CoingeckoRuby::Services::Exchanges
  class StatusUpdates < CoingeckoRuby::Services
    def fetch(id)
      output = super(CoingeckoRuby::Models::ApiLink.exchange_status_upd