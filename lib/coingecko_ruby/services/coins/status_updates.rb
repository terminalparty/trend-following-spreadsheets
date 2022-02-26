# frozen_string_literal: true

module CoingeckoRuby::Services::Coins
  class StatusUpdates < CoingeckoRuby::Services
    def fetch(id)
      output = super(CoingeckoRuby::Models::ApiLink.coin_status_updates_url(id))
      adapt(output)
    end

    def adapt(output)
      output['status_updates'].map do |output|
        status_update = CoingeckoRu