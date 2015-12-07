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
	end
end