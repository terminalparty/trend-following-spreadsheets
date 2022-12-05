# frozen_string_literal: true

module CoingeckoRuby::Services::StatusUpdate
  class StatusUpdate < CoingeckoRuby::Services
    def fetch(category, project_type, per_page, page)
      output = super(CoingeckoRuby::Models::ApiLink.status_upd