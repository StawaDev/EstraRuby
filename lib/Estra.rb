require_relative 'estrarb/http.rb'
include HttpManager

BASE_URL = HttpManager.BASE_URL
Version = HttpManager.Version

module EstraRB
    class Base
        def updatereminder
            if Current_Ver != Version
                print("EstraRB Reminder: It seems EstraRB has a new version, please update this package to version #{Version}")
            end
        end

        def run
            response = HTTParty.get(BASE_URL + "sfw/run")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["link"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end

        def hug
            response = HTTParty.get(BASE_URL + "sfw/hug")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["link"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end

        def smile
            response = HTTParty.get(BASE_URL + "sfw/smile")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["link"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end

        def neko
            response = HTTParty.get(BASE_URL + "sfw/neko")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["link"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end
    

        def poke
            response = HTTParty.get(BASE_URL + "sfw/poke")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["link"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end
    

        def bite
            response = HTTParty.get(BASE_URL + "sfw/bite")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["link"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end
    

        def slap
            response = HTTParty.get(BASE_URL + "sfw/slap")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["link"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end
    

        def highfive
            response = HTTParty.get(BASE_URL + "sfw/highfive")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["link"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end
    

        def headpat
            response = HTTParty.get(BASE_URL + "sfw/headpat")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["link"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end

        def kill
            response = HTTParty.get(BASE_URL + "nsfw/kill")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["link"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end

        def yuri
            response = HTTParty.get(BASE_URL + "nsfw/yuri")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["link"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end

        def yaoi
            response = HTTParty.get(BASE_URL + "nsfw/yaoi")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["link"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end

        def waifu
            response = HTTParty.get(BASE_URL + "anigames/waifu")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["link"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end

        def husbando
            response = HTTParty.get(BASE_URL + "anigames/husbando")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["link"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end

        def anitruth
            response = HTTParty.get(BASE_URL + "anigames/truth")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["text"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end

        def anidare
            response = HTTParty.get(BASE_URL + "anigames/dare")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["text"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end

        def truth
            response = HTTParty.get(BASE_URL + "games/truth")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["text"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end

        def dare
            response = HTTParty.get(BASE_URL + "games/dare")
            if response.code == 200
                parsed_json = JSON.parse(response.body)
                output = parsed_json["text"]
                return output
            else
                puts "It seems our API is not online for a while. Please try again later."
            end
        end

    end
end

Estra = EstraRB::Base.new

Estra.updatereminder