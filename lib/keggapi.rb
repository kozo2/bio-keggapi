require 'net/http'

module Keggapi
  def self.info(database)
    url = URI.parse("http://rest.kegg.jp/info/")
    res = Net::HTTP.start(url.host, url.port) do |http|
      sub = root + database
      http.get(sub)
    end

    p res.body
  end
end
