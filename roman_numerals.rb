class Fixnum
    def to_roman
        lookup = Hash[1000 => "M",
        900 => "CM",
        500 => "D",
        400 => "CD",
        100 => "C",
        90 => "XC", 
        50 => "L",
        40 => "XL",
        10 => "X",
        9 => "IX", 
        5 => "V",
        4=> "IV", 
        1 => "I"]

        answer = ""
        num = self
        while num > 0 do
            lookup.each { |key,value| 
                if num>=key
                    num = num - key
                    answer = answer + value
                    break
                end
            }
        end
        return answer
    end
end
module BookKeeping
    VERSION = 2
end