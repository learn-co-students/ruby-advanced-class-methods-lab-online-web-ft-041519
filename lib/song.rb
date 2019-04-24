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
    if @@all.any? { |obj| obj.name = name }
        puts "@@all: #{@@all}"
      @@all.find { |obj| obj.name = name }
    else
      falsey
    end
  end

  def self.find_or_create_by_name
    if self.find_by_name
      self
    else self.create_by_name
    end
  end

  def self.alphabetical
  #  @name.@@all.sort!
  end

  def self.new_from_filename

  end

  def self.create_from_filename

  end

  def self.destrol_all

  end

end
