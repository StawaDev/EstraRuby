require_relative 'http.rb'
include HttpManager

total = 0

def produce(total, endpoint, type)
    if total > 10
        return "Total must be lower than 10"
    end
    if total === 0 || total === 1
        return "Total must be lower than 1"
    end
    num = total.to_i
    list = []
    while num >= 1
        response = HttpManager.get_api("#{endpoint}")["#{type}"]
        list.push(response)
        num = num - 1
    end
    return "#{list}"
end
