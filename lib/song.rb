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

  def new_by_name(name)
    @name = name
  end

  def create_by_name(name)
    def initialize(name)
      @name = name
    end
    self.save
  end

  def find_by_name
    if @@all.include?(self.name)
    else
      falsey
    end
  end

  def find_or_create_by_name
    if self.find_by_name
      self
    else self.create_by_name
    end
  end

  def alphabetical
  #  @name.@@all.sort!
  end

  def new_from_filename

  end

  def create_from_filename

  end

  def destrol_all

  end

end
