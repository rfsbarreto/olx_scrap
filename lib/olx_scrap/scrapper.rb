# frozen_string_literal: true

require 'watir'
require_relative 'listing'

module OlxScrap
  class Scrapper
    def self.scrape_page(url)
      browser = Watir::Browser.new
      browser.goto url
      script_with_data = browser.scripts(id: /NEXT_DATA/).first.inner_html
      gson = JSON.parse(script_with_data)

    puts(gson['props']['pageProps']['ads'].map { |i| Listing.new(attrs: i) })

      #      listing = Listing.new(elements)
      #      puts listing
    end
  end
end
