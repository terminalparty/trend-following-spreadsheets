# frozen_string_literal: true

module CoingeckoRuby::Services::Events
  class Events < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.events_url)
      adapt(output)
    en