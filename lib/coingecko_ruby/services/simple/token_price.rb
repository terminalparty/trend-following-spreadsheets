# frozen_string_literal: true

module CoingeckoRuby::Services::Simple
  class TokenPrice < CoingeckoRuby::Services
    def fetch(id, contract_addresses, vs_currencies, include_market_cap,
              include_24hr_vol, include_24hr_change,
              include_last_updated_at)
      output = super(CoingeckoRuby::Models::ApiLink.simple_token_price_url(id, contract_addresses, vs_currencies,
                                                                           include_market_cap, include_24hr_vol,
                                                                           include_24hr_change,
                                                                           include_last_updated_at))
      adapt(output, vs_currencies, id, contract_addresses)
    end

    def adapt(output, vs_currencies, id, contract_addresses)
      prices = []

      output.each do |output|
        price = CoingeckoRuby::Models::Simple.new
        price.id = id
        price.contract_addresses = contract_addresses
        price.last = output[1][vs_currencies.to_s]
        price.market_cap = output[1]["#{vs_currencies}_market_c