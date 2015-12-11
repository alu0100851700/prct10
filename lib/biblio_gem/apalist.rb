module BiblioGem
	class APAList < List
	    
	    def initialize(*args)
			@head = @tail = nil
			@size = 0
			self.push(*args) if(args!=nil)
		end
		
	    def push(*args)
	        self.push_front(*args)
	        self.sort
	    end
	    
	    def pop
	        self.pop_front
	    end
	    
	    def to_s
	    	self.each do |value|
	    		value.to_s + "\n"
	    	end
	    end
		
	end
end

