# frozen_string_literal: true

module CoingeckoRuby::Services::Events
  class Countries < CoingeckoRuby::Services
    def fetch
      output = super(CoingeckoRuby::Models::ApiLink