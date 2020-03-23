module Concerns::Findable
  
  module ClassMethods
     
    def find_by_name(name)
      @@all.detect do |song|
        song.name == name
      end
    end
    
  end
  
end