class Timer

    attr_accessor :seconds
  
    def initialize
        @seconds = 0
    end

    def time_string
        hours = @seconds / 3600.0
        minutes = hours % 1 * 60
        seconds = minutes % 1 * 60
        
        hours = hours.to_i
        minutes = minutes.to_i
        seconds = seconds.to_i
        
        def padded(integer)
            if integer < 10
                return '0' + integer.to_s
            else
                return integer.to_s
            end
        end
        
        return padded(hours) + ':' + padded(minutes) + ':' + padded(seconds)
    end
    
end
