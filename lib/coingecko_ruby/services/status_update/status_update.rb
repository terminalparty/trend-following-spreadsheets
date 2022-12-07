# frozen_string_literal: true

module CoingeckoRuby::Services::StatusUpdate
  class StatusUpdate < CoingeckoRuby::Services
    def fetch(category, project_type, per_page, page)
      output = super(CoingeckoRuby::Models::ApiLink.status_update_url(category, project_type, per_page, page))
      adapt(output)
    end

    def adapt(output)
      status_updates = []
      output['status_updates'].each do |output|
        status_update = CoingeckoRuby::Models::StatusUpdate.new
        status_update.description = output['de