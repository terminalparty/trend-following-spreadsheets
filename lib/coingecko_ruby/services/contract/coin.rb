# frozen_string_literal: true

module CoingeckoRuby::Services::Contract
  class Coin < CoingeckoRuby::Services
    def fetch(id, contract_address)
      output = super(CoingeckoRuby::Models::ApiLink.contra