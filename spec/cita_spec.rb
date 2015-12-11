require "spec_helper"
require "req"

describe Cita do
   before :each do
       @c1 = Cita.new()
       
       @c1.set_autor("Jorge","Alonso")
       @c1.set_fecha("1994")
       @c1.set_titulo("Un titulo")
       @c1.set_lugar("SC de Tenerife")
       @c1.set_editorial("The Pragmatic Programmers")
       @c1.set_edicion("2º Edicion")
       @c1.set_volumen("Volumen 2")
    end
    
    describe "Se almacena bien" do
        it "Se almacena en formato APA" do
            expect(@c1.get_APA()).should be("Alonso J., (1994), Un titulo, SC de Tenerife, The Pragmatic Programmers, (2º Edicion), (Volumen 2).")
        end
    end
end