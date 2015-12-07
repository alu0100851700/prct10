module BiblioGem
	class APABibliography < Bibliography
	    attr_accessor :nombres, :apellidos, :tipo, :lugar
	    
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
			salida << @lugar + ".\n"
			
			#Añadir ISBN
			salida << @isbn
	    end
	end
end