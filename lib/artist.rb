class Artist 
  
  @@all=[]
  def initialize 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(name)
    n=Song.new(name)
    n.artist=self 
  end 
  
  def songs 
    @@all.select {|s| s.artist==self}
  end 
  
  def genres 
    self.songs.collect{|s| s.genre}
  end
  
  
end 