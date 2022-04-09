# frozen_string_literal: true

module CoingeckoRuby::Services::Contract
  class Coin < CoingeckoRuby::Services
    def fetch(id, contract_address)
      output = super(CoingeckoRuby::Models::ApiLink.contract_coin_url(
        id, contract_address
      ))
      adapt(output)
    end

    def adapt(output)
      coin = CoingeckoRuby::Models::Coin.new
      coin.id = output['id']
      coin.symbol = output['symbol']
      coin.name = output['name']
      coin.asset_platform_id = output['asset_platform_id']
      coin.block_time_in_minutes = output['block_time_in_minutes']
      coin.categories = output['categories']
      coin.localization = output['localization']
      coin.description = output['description']
      coin.links = output['links']
      coin.image = output['image']
      coin.country_origin = output['country_origin']
      coin.genesis_date = output['genesis_date']
     