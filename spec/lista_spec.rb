require "req"
require "spec_helper"

describe Lista do 
    before :each do
        

        @l1 = Libro.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],"Programing Ruby 1.9 & 2.0: The Pragmatic Programers' Guide.","(The facts of Ruby)","Pragmatic Bookshelf","4 edition", "July 7, 2013", ['ISBN-13: 978-1937785499','ISBN-10: 1937785491'])
        @l2 = Libro.new(['Scott Chacon'], "Pro Git 2009th Edition", "(Pro)","Apress", "2009 edition", "August 27, 2009",['ISBN-13: 978-1430218333','ISBN-10: 1430218339'] )
        @l4 = Libro.new(['David Chelimsky', 'Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'] , "The Rspec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "(The Facets of Ruby)", "Pragmatic Bookshelf", "1 edition", "July 7, 2013", ['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
        
        #@r1 = Revista.new("autores", "titulo", "serie", "editorial", "edicion1", "fecha", "issn")
        #@p1 = Periodico.new("autores", "titulo", "serie", "editorial", "edicion1", "fecha", "cod")
        #@le1 = Libroe.new("autores", "titulo", "serie", "editorial", "edicion1", "fecha", "url")
        
        @lista1 = Lista.new(@l1)
    end




    describe "Creación de la lista" do
        it "Se ha creado la lista" do 
            @lista1.should be_an_instance_of Lista
        end
    end
    
    describe "Añadir a la lista" do
        it "Se han añadido elementos a la lista" do
                 @lista1.añadir(@l2)
               #  @lista1.añadir(@l3)
                 @lista1.añadir(@l4)
                # @lista1.añadir(@l5)
                 
                 @lista1.shoul be_true
        end
    end
    
    describe "Añadir revista a la lista" do
       it "Seha añadido la revista" do
           @lista1.añañadir(@r1)
           @lista1.should be_true
        end
    end
    
        describe "Añadir libro electronico a la lista" do
       it "Seha añadido el libro electronico" do
           @lista1.añañadir(@le1)
           @lista1.should be_true
        end
    end
    
        describe "Añadir periodico a la lista" do
       it "Seha añadido el periodico" do
           @lista1.añañadir(@p1)
           @lista1.should be_true
        end
    end
    
    describe "Eliminar elemento" do
       it "Se ha eliminado" do
            @lista1.borrar(@l3)
        end
    end
    
    describe "Enumerable" do
        it"comprobando any?" do
            expect(@lista1.any?).to eq(true)
        end
        it "Comprobando count" do
            expect(@lista1.count).to eq(3) 
        end
    end
end