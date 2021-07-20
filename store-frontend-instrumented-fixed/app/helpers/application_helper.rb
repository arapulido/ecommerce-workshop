module ApplicationHelper
    def get_ads(page)
      uri = URI.parse('http://advertisements:5002/ads')
      http = Net::HTTP.new(uri.host, uri.port)
      req = Net::HTTP::Get.new(uri.request_uri)
      req['page-source'] = page
      res = http.request(req)
      @ads = JSON.parse(res.body)
    end
end
