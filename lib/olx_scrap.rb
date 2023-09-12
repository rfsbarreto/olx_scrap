# frozen_string_literal: true

require_relative 'olx_scrap/version'
require_relative 'olx_scrap/scrapper'

module OlxScrap
  class Error < StandardError; end

  # Define the base URL for olx
  base_url = 'https://www.olx.com.br'

  # Construct the URL for the house listings in the city
  url = "#{base_url}/imoveis/estado-se"

  OlxScrap::Scrapper.scrape_page(url)
end
