require "req"
require "spec_helper"

describe Periodico do
    before :each do
       @Periodico1=Periodico.new("Periodico") 
    end
    
    	describe "#Se crea el periodico" do
		it "Se ha creado el periodico" do
			@Periodico1.should be_an_instance_of Periodico
		end
		it "Se ha heredado el periodico de Libro" do
			@Periodico1.is_a? Libro
		end
	end	
end