require "req"
require "spec_helper"

describe Libro do
    before :each do 
            @Libro1 = Libro.new(['Dave Thomas','Andy Hunt','Chad Fowler'], "Programming Ruby 1.9&2.0:The pragmatic programmers'  Guide", "(The facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
            @Libro2 = Libro.new(['Scott Chacon'], "Pro Git 2009th Edition", "(Pro)","Apress", "2009 edition", "August 27, 2009",['ISBN-13: 978-1430218333','ISBN-10: 1430218339'] )
            @Libro4 = Libro.new(['David Chelimsky', 'Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'] , "The Rspec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "(The Facets of Ruby)", "Pragmatic Bookshelf", "1 edition", "July 7, 2013", ['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
        end


    describe "#Se crean los libros" do
        it "Se ha creado el libro" do
            @Libro1.should be_an_instance_of Libro
        end
    end
    
    context "Comparable" do
        it "Libro1 > Libro2, según el titulo" do
            expect(@Libro1 > @Libro2).to eq(true)
        end
        it "Libro2 < Libro4, según el titulo"do
            expect(@Libro2 < @Libro4).to eq(true)
        end
        
    end
end