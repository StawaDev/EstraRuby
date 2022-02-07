require 'httparty'
require 'json'

module HttpManager
    def version
        get_response = HTTParty.get("https://estra-api.herokuapp.com/version")
        response = JSON.parse(get_response.body)
        a = response["EstraRuby"]["Version"]
        return a
    end

    def get_api(endpoint)
        get_response = HTTParty.get("https://estra-api.herokuapp.com/api/#{endpoint}")
        response = JSON.parse(get_response.body)
        return response
    end
end
