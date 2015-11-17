require "spec_helper"
require "req"

describe Revista do
	before :each do
		@Revista1 = Revista.new("titulo", "editorial", "edicion1", "fecha","url")
	end
	
	describe "#Se crea la revista" do
		it "Se ha creado la revista" do
			@Revista1.should be_an_instance_of Revista
		end
		it "Se ha heredado la revista de Libro" do
			@Revista1.is_a? Libro
		end
	end	
end