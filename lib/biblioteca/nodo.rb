require "biblioteca/biblioteca"

class Nodo
    attr_accessor :anterior, :valor, :siguiente
   
    def initialize(anterior,valor,siguiente)
        @anterior=anterior
       @valor=valor
       @siguiente=siguiente
    end
end