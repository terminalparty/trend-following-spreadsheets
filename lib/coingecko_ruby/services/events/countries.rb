# frozen_string_literal: true

module CoingeckoRuby::Services::Events
  class Countries < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink.events_countries_url)
      adapt(output)
    end

    def adapt(output)
      output['data'].ma