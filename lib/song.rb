#require `pry`

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
  	song = self.new
  	song.save
  	song
  end

  def self.new_by_name(name)
      song = self.new
      song.name = name
      song
    end

  def self.create_by_name(name)
    song = self.new_by_name(name)
    song.save
    song
  end

  def self.find_by_name(name)
    if @@all.any? { |obj| obj.name == name }
      @@all.find { |obj| obj.name == name }
    elsif @@all.any? { |obj| obj.name = name }
      @@all.find { |obj| obj.name = name }
    else
      nil
    end
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      object = self.find_by_name(name)
      object.name = name
      object
    else
      object = self.create_by_name(name)
      puts "object: #{object}"
      object
    end
  end

  def self.alphabetical
    name_arr = []
    new_all = []
    @@all.each { |song| name_arr << song.name}
    name_arr.sort!
    name_arr.each { |name| new_all << self.find_by_name(name) }
    new_all
  end

  def self.new_from_filename(filename)
    filename_arr = filename.split(" - ")
    name_arr = filename_arr[1].split(".")
    name = name_arr[0]
    artist = filename_arr[0]
    object = self.new_by_name(name)
    object.name = name
    object.artist_name = artist
    object
  end

  def self.create_from_filename(filename)
    filename_arr = filename.split(" - ")
    name_arr = filename_arr[1].split(".")
    name = name_arr[0]
    artist = filename_arr[0]
    object = self.create_by_name(name)
    object.name = name
    object.artist_name = artist
    object
  end

  def self.destroy_all
    @@all.clear
  end

end
