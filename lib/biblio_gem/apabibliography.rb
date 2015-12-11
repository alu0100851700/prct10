module BiblioGem
	class APABibliography < Bibliography
	    attr_accessor :nombres, :apellidos, :tipo, :lugar

		include Comparable
	    def initialize(args)
	        @nombres = args[:nombres]
	        @apellidos = args[:apellidos]
	        @tipo = args[:tipo]
	        @lugar = args[:lugar]
	        super(args)
	    end
	    
	    def to_s
	    	salida = ""
	    	#Añadir tipo de libro
	    	salida << @tipo + "\n"
	    	
	    	#Añadir autores
	    	i = 0
			num = @apellidos.length
			
			while i < num
			   salida << @apellidos[i].capitalize + ", " + @nombres[i].capitalize + ". "
			   i +=1;
			end 
			
			#Añadir titulo
			salida << @titulo + ". "
			
			#Añadir fecha
			salida << @fecha + ". "
			
			#Añadir lugar
			salida << @lugar + ".\n"	if @lugar!=nil
			
			#Añadir ISBN
			salida << @isbn
	    end
	    
	    def <=> (other)
			if 		self.apellidos[0] != other.apellidos[0]
				return (self.apellidos[0] <=> other.apellidos[0])
				
			else
				return (self.fecha <=> other.fecha)
			end
				
		end
	end
end