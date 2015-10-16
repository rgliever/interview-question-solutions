# Ryan Gliever

# Creates a Temp Tracker class which records temperature in the range 0 to 110 as well as the maximum, minimum, mean and mode 
# temperatures, updating the values appropriately on each insertion. The lookup time for each is O(1) since the values are 
# updated during each insertion. Insert is also O(1) as we simply increment the value for the temperature in our array and 
# compare values to update max, min, mean and mode. Extra space is constant as well, since we always have a lower bound of 0
# and an upper bound of 110 on our array of temperatures because our temperature range is 0-110.

class TempTracker
  attr_accessor :temps, :max, :min, :mean, :num_rec_temps, :mode  # num_rec_temps is the number of recorded temperatures
  def initialize
    self.temps = [0]  * 110   # 110 = max temperature
    self.max, self.mode, self.num_rec_temps = [0, 0, 0]
    self.mean = 0.0
    self.min = 110
  end
  
  def insert(temp)
    if temp < 110 && temp > 0
      self.temps[temp] += 1
      self.max = temp if temp > self.max
      self.min = temp if temp < self.min
      if num_rec_temps == 0
        self.mean = temp / 1.0
      else
        self.mean = ((self.mean * self.num_rec_temps) + temp) / (self.num_rec_temps + 1)
      end
      self.num_rec_temps += 1
      self.mode = temp if self.temps[temp] > self.temps[self.mode]
    else
      puts "Please enter a number in the range 0 - 110"
    end
  end
  
  def get_max
    return self.max
  end
  
  def get_min
    return self.min
  end
  
  def get_mean
    return self.mean
  end
  
  def get_mode
    return self.mode
  end
end

tt = TempTracker.new
tt.insert(52)
tt.insert(78)
tt.insert(1)
tt.insert(52)
tt.insert(22)
tt.insert(89)
tt.insert(105)
tt.insert(67)
puts tt.get_max  # 105
puts tt.get_min  # 1
puts tt.get_mean # 58.25
puts tt.get_mode # 52
tt.insert(120) 	 # Error message
