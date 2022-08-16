# frozen_string_literal: true

module CoingeckoRuby::Services::Exchanges
  class StatusUpdates < CoingeckoRuby::Services
    def fetch(id)
      output = super(CoingeckoRuby::Models::ApiLink.exchange_status_updates_url(id))
      adapt(output)
    end

    def adapt(output)
      output['status_updates'].map do |output|
        status_update = CoingeckoRuby::Models::StatusUpdate.new
        status_update.description = output['description']
        status_update.category = output['category']
        status_update.created_at =