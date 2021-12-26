require 'httparty'
require 'json'

module EstraInfo
    def Version
        response = HTTParty.get("https://estra-api.herokuapp.com/")
        parse_json = JSON.parse(response.body)
        versions = parse_json["Version"].freeze
        return versions
    end

    def BASE_URL
        base_url = 'https://estra-api.herokuapp.com/api/'
        return base_url
    end
    
    def Data_URL
        data_url = 'https://estra-api.herokuapp.com/'
        return data_url
    end
end