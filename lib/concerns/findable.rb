module Concerns::Findable
  
  def find_by_name(name)
    @@all.detect do |song|
      song.name == name
    end
  end
    
end