class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end

class Song.create

def initalize

song = Song.create 
Song.all.include?(song) 
end 

class Song.new_by_name 
  def Song.new_by_name
  song = Song.new_by_name("The Middle")
    @name="The Middle"
    song.name => "The Middle"
  end
  
  def Song.new_by_name
    song = Song.new_by_name("The Middle")
=> <Song @name="The Middle">
song.name => "The Middle"
end 

def Song.create_by_name
song = Song.create_by_name("The Middle")
 @name="The Middle"
song

Song.all.include?(song)
=> true
    