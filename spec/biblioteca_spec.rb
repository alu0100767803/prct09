require "req"
require "spec_helper"

describe Libro do
    before :each do 
            @Libro1=Libro.new(['Dave Thomas','Andy Hunt','Chad Fowler'], "Programming Ruby 1.9&2.0:The pragmatic programmers'  Guide", "(The facets of Ruby)", "Pragmatic Bookshelf", "4 edition", "(July 7, 2013)", ['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
        end


    describe "#Se crean los libros" do
        it "Se ha creado el libro" do
            @Libro1.should be_an_instance_of Libro
        end
    end
end