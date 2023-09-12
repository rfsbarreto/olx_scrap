# frozen_string_literal: true

module OlxScrap
  class Listing
    def initialize(attrs:)
      @listing = attrs
    end

    private

    def title
      @listing['title']
    end

    def price
      @listing["price"]
    end

    def url
      @listing['url']
    end

    def to_s
      puts "Title: #{title}"
      puts "Price: #{price}"
      puts "Link: #{url}"
      puts "---------------------"
    end
  end
end
