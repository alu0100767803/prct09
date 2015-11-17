require "biblioteca/version"

class Lista
    attr_accessor :valor
    
    def initialize(valor)
       @cabecera=Nodo.new(valor,nil)
    end
    
    
    def get_cabecera
       @cabecera 
    end
    
    def set_cabecera(valor)
       @cabecera = valor 
    end
    
    def añadir(valor)
        current = @cabecera
        while (current.siguiente != nil)
            current = current.siguiente
        end 
        current.siguiente = Nodo.new(valor,nil)       
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
        end
    end
end
    
end