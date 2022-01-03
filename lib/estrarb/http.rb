require 'httparty'
require 'json'

Current_Ver = '0.1.4'

module HttpManager
    def Version
        get_response = HTTParty.get("https://estra-api.herokuapp.com/version")
        response = JSON.parse(get_response.body)
        versions = response["EstraRuby"]["Version"]
        return versions
    end

    
    def BASE_URL
        base_url = 'https://estra-api.herokuapp.com/api/'
        return base_url
    end
end