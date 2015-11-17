require "spec_helper"
require "req"

describe Libroe do
	before :each do
		@Libroe1 = Libroe.new("titulo", "editorial", "edicion1", "fecha","url")
	end
	
	describe "#Se crea el libro electronico" do
		it "Se ha creado el libro electronico" do
			@Libroe1.should be_an_instance_of Libroe
		end
		it "Se ha heredado el Libro electronico de Libro" do
			@Libroe1.is_a? Libro
		end
	end	
end