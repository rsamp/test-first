class Timer
    def initialize
        @seconds = 0
    end
    
    def seconds
        @seconds
    end
    
    def seconds=(new_seconds)
        @seconds = new_seconds
    end
    
    def time_string
        hours = seconds / 3600
        minutes = (seconds % 3600) / 60
        secs = (seconds % 3600) % 60
        hours = padded(hours)
        minutes = padded(minutes)
        secs = padded(secs)
        "#{hours}:#{minutes}:#{secs}"
    end
    
    def less_than_10?(num)
        num < 10
    end
    
    def padded(num)
        if less_than_10?(num)
            num = num.to_s
            num = "0#{num}"
        end
        num.to_s
    end
end