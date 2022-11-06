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
      adapt(output, vs_currencies, id, contract_addresses