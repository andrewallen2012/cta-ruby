module Cta
  module Bus
    include HTTParty
    #base_uri "http://lapi.transitchicago.com/api/1.0/ttarrivals.aspx"
    def self.base_url
      "http://www.ctabustracker.com/bustime/api/v1/"
    end

    def self.fetch(url_appendage, opts)
      get(base_url + url_appendage, opts)
    end

  end
end