class Timer
  #write your code here
  def seconds=(seconds)
      @seconds = seconds
  end
 
  def seconds
    @seconds = 0
  end

  def time_string
    secs = @seconds % 60
    mins = (@seconds / 60).floor % 60
    hours = (@seconds / 60 / 60).floor % 60

    if(hours < 10)
      hours = '0'+hours.to_s
    end
    if(mins < 10)
      mins = '0'+mins.to_s
    end
    if(secs < 10)
      secs = '0'+secs.to_s
    end
    return "#{hours}:#{mins}:#{secs}"
  end

end
