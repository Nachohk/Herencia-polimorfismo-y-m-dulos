module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
        'Puedo caminar!'
        end
    end
        end
    module Alimentacion
        module Herbivoro
            def comer
                'Puedo comer plantas!'
            end
        end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

#crear clase animal 

class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

#crear clase ave, mamifero, insecto 

class Ave < Animal
    include Habilidades::Caminante   
end 

class Mamifero < Animal
end 

class Insecto < Animal
end 

# crear clase pinguino y paloma que hereda ave 

class Pinguino < Ave
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador
    include Alimentacion::Herbivoro
    include Alimentacion::Carnivoro
end

class Pato < Ave 
    include Habilidades::Volador
    include Habilidades::Caminante
    include Habilidades::Nadador
    include Alimentacion::Herbivoro
    include Alimentacion::Carnivoro
end

#crear clases perro, gato, vaca, heredan de mamifero

class Perro < Mamifero
    include Habilidades::Caminante
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
    include Alimentacion::Herbivoro
end 

class Gato < Mamifero
    include Habilidades::Caminante
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end 

# crear clases mosca, maripo y abeja heredan de insecto 

class Mosca < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
    include Alimentacion::Herbivoro
end 

class Mariposa < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end 

class Abeja < Insecto 
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end 

#Incluye los modulos de cada subclase utilizando la instruccion include 