class Genre 
  attr_accessor :name 
  def initialize(name) 
    @name=name
  end 
  def songs 
    Songs.all.select{|s| s.genre==self}
  end 
  def artists 
    Genre.songs.collect{|s| s.artist}
  end 
    
end
