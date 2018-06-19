class Umbrella::Weather
  
  @@all = []
  
  def save
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  end 
  