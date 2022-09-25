# frozen_string_literal: true

module CoingeckoRuby
  class Services
    def fetch(endpoint)
      JSON.parse(HT