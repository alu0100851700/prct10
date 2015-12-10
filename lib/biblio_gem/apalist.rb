module BiblioGem
	class APAList < List
	    
	    def initialize(*args)
			@head = @tail = nil
			@size = 0
			self.push(*args) if(args!=nil)
		end
		
	    def push(*args)
	        args.each do |value|
	            pos = @head
	            if @head!=nil	
    				while (pos.next != nil) || (pos.value > value) 
    					pos = pos.next
    				end 

                    aux = Node.new(:value => value, :next => pos.next)
                    (pos.next).prev = aux   if pos.next!=nil
                    aux.prev = pos
                    pos.next = aux
				else	#La cola esta vacia
					@head = @tail = Node.new(:value => value)
				end	
		
				@size += 1
			end
	    end
	    
	    def pop
	        pop_back
	    end
	end
end

