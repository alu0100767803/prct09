require "biblioteca/version"

class Lista
    attr_accessor :valor
    
    def initialize(valor)
       @cabecera=Nodo.new(nil,valor,nil)
       @fin=Nodo.new(nil,valor,nil)
       
    end
    
    
    def get_cabecera
       @cabecera 
    end
    
    def get_fin
       @fin
    end
    
    def set_cabecera(valor)
       @cabecera = valor 
    end
    
    def set_fin(valor)
        @fin
    end
    
    def añadir(valor)
        current = @head
        previous
        while (current.siguiente != nil)
            current = current.siguiente
        end 
        current.siguiente = Nodo.new(nil,valor,nil)
        @fin=current.siguiente
        previous = @fin
        previous.anterior = current
        
    end
    
def borrar(valor)
    current = @cabecera
    if (current.valor == valor)
        @cabecera = @cabecera.siguiente
    else         
        current = @cabecera
        while (current != nil) && (current.siguiente != nil) && ((current.siguiente).valor != valor)
        
            current = current.next_node
            
        end 

        if (current != nil) && (current.siguiente != nil)
             current.siguiente = (current.siguiente).siguiente
             current.anteiro = (current.anterior).anterior
        end
    end
end
    
end