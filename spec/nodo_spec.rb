require "spec_helper"
require "req"

describe Nodo do 
	before :each do 
		@Nodo1 = Nodo.new(nil,10,nil)
	end
	
	describe "#Se crean los nodos" do
		it "Se ha creado el nodo" do
			@Nodo1.should be_an_instance_of Nodo
		end
	end
end