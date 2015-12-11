=begin class Cita
    attr_accessor :nombre, :apellido, :titulo, :fecha, :lugar, :editorial, :edicion, :volumen, :APA
    
    def initialize(titulo,fecha,lugar,editorial)
       @nombre=[]
       @apellido=[]
       @titulo=""
       @fecha=""
       @lugar=""
       @editorial=""
       @edicion=""
       @volumen=""
       @APA=""
    end
    
    def set_autor(nombre, apellido)
        @apellido=apellido
        @APA+=@apellido
        @APA+=""
        @nombre=nombre
        @APA+=@nombre
        @APA+=". "
    end
        
    
    def set_titulo(titulo)
       @titulo=titulo
       @APA+=@titulo
       @APA+=", "
    end
    
    def set_fecha(fecha)
        @fecha=fecha
        @APA="( "
        @APA+=@fecha
        @APA="), "
    end
    
    def set_lugar(lugar)
       @lugar=lugar
       @APA+=@lugar
       @APA+=", "
    end
    
    def set_editorial(editorial)
        @editorial=editorial
        @APA+=@editorial
        @APA+=", "
    end
    
    def set_edicion(edicion)
        @edicion=edicion
        @APA+="("
        @APA+=edicion
        @APA+="), "
        
    end
    
    def set_volumen(volumen)
        @volumen=volumen
        @APA+="("
        @APA+=@volumen
        @APA+=")."
    end
    
    def get_APA()
       @APA 
    end
end