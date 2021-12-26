require 'httparty'
require 'json'

module EstraInfo
    def Version
        response = HTTParty.get(BASE_URL)
        parse_json = JSON.parse(response.body)
        version = parse_json["Version"].freeze
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