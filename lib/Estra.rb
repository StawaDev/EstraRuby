require_relative 'estrarb/http.rb'
require_relative 'estrarb/base.rb'
include HttpManager

Version = HttpManager.version

module Client
    class Base
        def reminderUpdate
            civ = '0.1.5'
            if civ != Version
                puts "EstraRuby: It seems you got an older version of EstraRuby. Current stable version #{Version}"
            end
        end

        def autoUpdate
            civ = '0.1.5'
            if civ != Version
                puts "EstraRuby: It seems you got an older version of EstraRuby. We will gonna update it to latest stable version, #{Version}"
                exec('gem install estrarb')
            end
        end

        def run(generate = nil)
            if generate
                return produce(generate, "sfw/run", "link")
            end
            return HttpManager.get_api("sfw/run")["link"]
        end

        def hug(generate = nil)
            if generate
                return produce(generate, "sfw/hug", "link")
            end
            return HttpManager.get_api("sfw/hug")["link"]
        end

        def smile(generate = nil)
            if generate
                return produce(generate, "sfw/smile", "link")
            end
            return HttpManager.get_api("sfw/smile")["link"]
        end

        def neko(generate = nil)
            if generate
                return produce(generate, "sfw/neko", "link")
            end
            return HttpManager.get_api("sfw/neko")["link"]
        end
    

        def poke(generate = nil)
            if generate
                return produce(generate, "sfw/poke", "link")
            end
            return HttpManager.get_api("sfw/poke")["link"]
        end
    

        def bite(generate = nil)
            if generate
                return produce(generate, "sfw/bite", "link")
            end
            return HttpManager.get_api("sfw/bite")["link"]
        end
    

        def slap(generate = nil)
            if generate
                return produce(generate, "sfw/slap", "link")
            end
            return HttpManager.get_api("sfw/slap")["link"]
        end
    

        def highfive(generate = nil)
            if generate
                return produce(generate, "sfw/highfive", "link")
            end
            return HttpManager.get_api("sfw/highfive")["link"]
        end
    

        def headpat(generate = nil)
            if generate
                return produce(generate, "sfw/headpat", "link")
            end
            return HttpManager.get_api("sfw/headpat")["link"]
        end

        def kill(generate = nil)
            if generate
                return produce(generate, "nsfw/kill", "link")
            end
            return HttpManager.get_api("nsfw/kill")["link"]
        end

        def yuri(generate = nil)
            if generate
                return produce(generate, "nsfw/kill", "link")
            end
            return HttpManager.get_api("nsfw/kill")["link"]
        end

        def yaoi(generate = nil)
            if generate
                return produce(generate, "nsfw/kill", "link")
            end
            return HttpManager.get_api("nsfw/kill")["link"]
        end

        def waifu(generate = nil)
            return HttpManager.get_api("anigames/waifu")
        end

        def husbando(generate = nil)
            return HttpManager.get_api("anigames/husbando")
        end

        def shipper_waifu(player)
            return HttpManager.get_api("anigames/shipper/waifu/?player=#{player}")
        end

        def shipper_husbando(player)
            return HttpManager.get_api("anigames/shipper/husbando/?player=#{player}")
        end

        def anitruth(generate = nil)
            if generate
                return produce(generate, "anigames/truth", "text")
            end
            return HttpManager.get_api("anigames/truth")["text"]
        end

        def anidare(generate = nil)
            if generate
                return produce(generate, "anigames/dare", "text")
            end
            return HttpManager.get_api("anigames/dare")["text"]
        end

        def truth(generate = nil)
            if generate
                return produce(generate, "games/truth", "text")
            end
            return HttpManager.get_api("games/truth")["text"]
        end

        def dare(generate = nil)
            if generate
                return produce(generate, "games/dare", "text")
            end
            return HttpManager.get_api("games/dare")["text"]
        end

    end
end

Estra = Client::Base.new
