#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe BiblioGem::APABibliography do

    describe "Almacenamiento de datos (1 autor):" do
        before :each do
            @bib1 = BiblioGem::APABibliography.new(tipo: "Libro", nombres: ["Nombre1","Nombre2", "Nombre3"], apellidos: ["Apellido1", "Apellido2", "Apellido3"], titulo: "Titulo", fecha: "Fecha", lugar: "Lugar1", isbn: "ISBN")
            @bib2 = BiblioGem::APABibliography.new(tipo: "Articulo",nombres: ["Nombre"], apellidos: ["Apellido"], titulo: "Titulo", fecha: "Fecha", lugar: "Lugar2", isbn: "ISBN")
        end

    it "La referencia contiene los nombres de los autores" do
        expect(@bib1.nombres).to eq ["Nombre1", "Nombre2", "Nombre3"]
        expect(@bib2.nombres).to eq ["Nombre"]
    end

    it "La referencia contiene los apellidos de los autores" do
        expect(@bib1.apellidos).to eq ["Apellido1", "Apellido2", "Apellido3"]
        expect(@bib2.apellidos).to eq ["Apellido"] 
    end
    
     it "La referencia contiene un tipo" do
        expect(@bib1.tipo).to eq "Libro"
        expect(@bib2.tipo).to eq "Articulo"
    end
    
    it "La referencia contiene el lugar de publicación" do
        expect(@bib1.lugar).to eq "Lugar1"
        expect(@bib2.lugar).to eq "Lugar2"
    end
    
    it "La referencia debe salir formateada correctamente" do
        expect(@bib1.to_s).to eq "Libro\nApellido1, Nombre1. Apellido2, Nombre2. Apellido3, Nombre3. Titulo. Fecha. Lugar1.\nISBN"
        expect(@bib2.to_s).to eq "Libro\nApellido, Nombre. Titulo. Fecha. Lugar2.\nISBN"
    end
   end
end
