require 'httparty'
require 'json'

Current_Ver = '0.1.4'

module HttpManager
    def Version
        response = HTTParty.get("https://estra-api.herokuapp.com/")
        parse_json = JSON.parse(response.body)
        versions = parse_json["EstraRuby"]["Version"].freeze
        return versions
    end

    
    def BASE_URL
        base_url = 'https://estra-api.herokuapp.com/api/'
        return base_url
    end
    

    def UpdateReminder
        response = HTTParty.get("https://estra-api.herokuapp.com/version")
        parse_json = JSON.parse(response.body)
        version = parse_json["EstraRuby"]["Version"].freeze
        if version != Current_Ver
            print("EstraRB Reminder: #{change_logs}")
        end
    end
end