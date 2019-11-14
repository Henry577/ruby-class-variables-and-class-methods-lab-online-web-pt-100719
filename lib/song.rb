class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []  
  
  
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(name, artist, genre)
    
    @name  = name
    @artist = artist
    @genre = genre
    
    @@count += 1
   
    @@artists << artist
    @@genres << genre
    
  end
  
  def self.count
    
    @@count
    
  end
  
  def self.genres
    
    for item in @@genres do
      
      if @@genre_count.include?(item)
        
        @@genre_count[item] += 1 
        
      else
        
        @@genre_count[item] = 1 
        
      end
      
    end
    
   @@genre_count
   @@genre_count.keys
    
  end
  
  def self.artists
    
    for item in @@artists do
      
      if @@artist_count.include?(item)
        
        @@artist_count[item] += 1 
        
      else
        
        @@artist_count[item] = 1 
        
      end
      
    end
    
    @@artist_count.keys
    
  end
  
  def self.genre_count
    
    @@genre_count
    
  end
  
  def self.artist_count
    
    @@artist_count
    
  end
  
end