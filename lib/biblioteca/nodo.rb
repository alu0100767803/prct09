require "biblioteca/version"
require "biblioteca/biblioteca"

class Nodo
    attr_accessor :valor, :siguiente
   
    def initialize(valor,siguiente)
       @valor=valor
       @siguiente=siguiente
    end
end