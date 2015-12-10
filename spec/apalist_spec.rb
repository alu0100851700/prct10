#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe BiblioGem::APAList do
   descibe "Expectativas para una lista de referencias APA" do
       before :each do
            @apa1 = BiblioGem::APABibliography.new(tipo: "Hardcover Book", nombres: ["Denis"], apellidos: ["Simons"], fecha: "2015", titulo: "School-Centered Interventions: Evidence-Based Strategies for Social, Emotional, and Academic Success", isbn: "978-1-4338-2085-4")
            @apa2 = BiblioGem::APABibliography.new(tipo: "Hardcover Book", nombres: ["Susan"], apellidos: ["Forman"], fecha: "2015", titulo: "Implementation of Mental Health Programs in Schools: A Change Agent's Guide", isbn: "978-1-4338-1942-1")
            @apa3 = BiblioGem::APABibliography.new(tipo: "Hardcover Book", nombres: ["Valerie","Vivian"], apellidos: ["Reyna","Zayas"], fecha: "2014", titulo: "The Neuroscience of Risky Decision Making", isbn: "978-1-4338-1662-8")
            @apa4 = BiblioGem::APABibliography.new(tipo: "Hardcover Book", nombres: ["Valerie","Sandra","Michael"], apellidos: ["Reyna","Chapman","Dougherty"], fecha: "2012", titulo: "The Adolescent Brain: Learning, Reasoning, and Decision Making", isbn: " 978-1-4338-1070-1")
            @l = BiblioGem::APAList.new(@apa1,@apa2,@apa3,@apa4)
       end
       
        it "La lista se muestra en el orden correcto" do
            expect(@l.pull).to be @apa2
            expect(@l.pull).to be @apa3
            expect(@l.pull).to be @apa4
            expect(@l.pull).to be @apa1
        end
   end
end