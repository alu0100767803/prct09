require "req"

describe Libro do 
    before :each do
        
        Nodo = Struct.new(:value, :next)

        @l1 = Libro.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],"Programing Ruby 1.9 & 2.0: The Pragmatic Programers' Guide.","(The facts of Ruby)","Pragmatic Bookshelf","4 edition", "July 7, 2013", ['ISBN-13: 978-1937785499','ISBN-10: 1937785491'])
        @l2 = Libro.new(['Scott Chacon'], "Pro Git 2009th Edition", "(Pro)","Apress", "2009 edition", "August 27, 2009",['ISBN-13: 978-1430218333','ISBN-10: 1430218339'] )
        @l3 = Libro.new(['David Flanagan', 'Yukihiro Matsumoto'], "The Ruby Programming Language", "O'Reilly Media","1 edition", "February 4, 2008", ['ISBN-10: 0596516177', 'ISBN-13: 978-0596516178'])
        @l4 = Libro.new(['David Chelimsky', 'Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'] , "The Rspec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "(The Facets of Ruby)", "Pragmatic Bookshelf", "1 edition", "July 7, 2013", ['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
        @l5 = Libro.new(['Richard E. Silverman'], "Git Pocket Guide", "O'Reilly Media", "1 edition", "Augst 2, 2013", ['ISBN-10: 1449325866', 'ISBN-13: 978-1449325862'])
    
        libro1 = Nodo.new(l1, nil)
        libro2 = Nodo.new(l2, nil)
        libro3 = Nodo.new(l3, nil)
        libro4 = Nodo.new(l4, nil)
        libro5 = Nodo.new(l5, nil)
        
        @lista1 = Lista.new(libro1)
    end
end

describe "Creación de la lista" do
    it "SE ha creado la lista" do 
        @lista1.should be_an_instance_of Lista
    end
end

describe "COmprobación de nodos" do
	it "Se han creado los nodos" do
	    libro1.should be_an_instance_of Nodo
	end
end

describe "#inclusion en la lista" do
    it "Segundo libro introducido" do 
        @lista1.añadir(libro2)    
        @lista1.should be_true
    end
    it "Tercer libro introducido" do 
        @lista1.añadir(libro3)
        @lista1.should be_true
    end
    it "Cuarto libro introducido" do 
        @lista1.añadir(libro4)
        @lista1.should be_true
    end
    it "Quinto libro introducido" do 
        @lista1.añadir(libro5)
        @lista1.should be_true
    end
end

describe "#eliminacion de la lista" do 
    it "ELiminar el ultimo libro" do
        @lista1.eliminar(libro5)
        @lista1.should be_true
    end

end