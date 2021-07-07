require 'pry'

class Song
  
  attr_accessor :name, :artist_name
  
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    @@all << song
    song
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end  
  
  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  
  end 
  
  def self.find_or_create_by_name(name)
    song = self.find_by_name(name)
    # if !song
      song = self.create_by_name(name) if !song 
    # end
    song
  end 
  
  def self.alphabetical
    #binding.pry
    self.all.sort_by { |song| song.name}
  end 
  
  def self.new_from_filename(filename)
    song = self.new
    parts = filename.split(" - ")
    #binding.pry
    song.name = parts[1].gsub(".mp3","")
    song.artist_name = parts[0]
    song
  end 

  def self.create_from_filename(filename)
    song = self.create
    parts = filename.split(" - ")
    #binding.pry
    song.name = parts[1].gsub(".mp3","")
    song.artist_name = parts[0]
    song  
  end 
  
  def self.destroy_all
    self.all.clear
  end 
  
end
