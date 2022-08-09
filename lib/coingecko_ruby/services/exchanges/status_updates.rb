# frozen_string_literal: true

module CoingeckoRuby::Services::Exchanges
  class StatusUpdates < CoingeckoRuby::Services
    def fetch(id)
      output = super(CoingeckoRuby::Models::ApiLink.exchange_status_updates_url(id))
      adapt(output)
    end

    def adapt(output)
      output[