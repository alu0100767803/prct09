require "biblioteca/biblioteca"

class Libroe < Libro
	attr_accessor :url
	def initialize(autores, titulo, serie, editorial, edicion, fecha, url)
		super(autores, titulo, serie,  editorial, edicion, fecha)
		@url = url
	end	
end