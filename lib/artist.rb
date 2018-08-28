class Artist 
  attr_reader :name
  @@all=[]
  def initialize(name)\
    @name=name
    @@all << self 
  end 
  def self.all 
    @@all 
  end 
  def new_song(name,genre)
    n=Song.new(name,self,genre)
    n.artist=self 
  end 
  def songs 
    Songs.all.select {|s| s.artist==self}
  end 
  def genres 
    self.songs.collect{|s| s.genre}
  end
end 

