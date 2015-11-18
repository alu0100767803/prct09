require "biblioteca/biblioteca"

class Periodico < Libro
	attr_accessor :cod
	def initialize(autores, titulo, serie, editorial, edicion, fecha, cod)
		super(autores, titulo, serie, editorial, edicion, fecha)
		@cod = cod
	end	
end