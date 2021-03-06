#encoding: UTF-8

require "singleton"

require_relative "BadConsequence"
require_relative "CombatResult"
require_relative "Dice"
require_relative "Monster"
require_relative "Player"
require_relative "Prize"
require_relative "Treasure"
require_relative "TreasureKind"
require_relative "Cultist"
require_relative "CultistPlayer"
require_relative "SpecificBadConsequence"
require_relative "NumericBadConsequence"
require_relative "DeathBadConsequence"



#require_relative  cultist


module NapakalakiGame
  class CardDealer

    include Singleton
    attr_accessor :unusedTreasures, :usedTreasures, :unusedMonsters, :usedMonsters, :unusedCultist

    def initialize
      @unusedTreasures = Array.new
      @usedTreasures   = Array.new
      @unusedMonsters  = Array.new
      @usedMonsters    = Array.new
      @unusedCultists   = Array.new
    end

    def initTreasureCardDeck

      @unusedTreasures = Array.new
      @usedTreasures  = Array.new

      @unusedTreasures.push Treasure.new('¡Si mi amo!', 4, TreasureKind::HELMET)
      @unusedTreasures.push Treasure.new('Botas de investigacion', 3, TreasureKind::SHOES)
      @unusedTreasures.push Treasure.new('Capucha de Cthulhu', 3, TreasureKind::HELMET)
      @unusedTreasures.push Treasure.new('A prueba de babas', 2, TreasureKind::ARMOR)
      @unusedTreasures.push Treasure.new('Botas de lluvia acida', 1, TreasureKind::BOTHHANDS)
      @unusedTreasures.push Treasure.new('Casco minero', 2, TreasureKind::HELMET)
      @unusedTreasures.push Treasure.new('Ametralladora ACME', 4, TreasureKind::BOTHHANDS)
      @unusedTreasures.push Treasure.new('Camiseta de la ETSIIT', 1, TreasureKind::ARMOR)
      @unusedTreasures.push Treasure.new('Clavo de rail ferroviario', 3, TreasureKind::ONEHAND)
      @unusedTreasures.push Treasure.new('Cuchillo de sushi arcano', 2, TreasureKind::ONEHAND)
      @unusedTreasures.push Treasure.new('Fez alopodo', 3, TreasureKind::HELMET)
      @unusedTreasures.push Treasure.new('Hacha prehistorica', 2, TreasureKind::ONEHAND)
      @unusedTreasures.push Treasure.new('El aparato del PR. Tesla', 4, TreasureKind::ARMOR)
      @unusedTreasures.push Treasure.new('Gaita', 4, TreasureKind::BOTHHANDS)
      @unusedTreasures.push Treasure.new('Insecticida', 2, TreasureKind::ONEHAND)
      @unusedTreasures.push Treasure.new('Escopeta de 3 cañones', 4, TreasureKind::BOTHHANDS)
      @unusedTreasures.push Treasure.new('Garabato mistico', 2, TreasureKind::ONEHAND)
      @unusedTreasures.push Treasure.new('La rebeca metalica', 2, TreasureKind::ARMOR)
      @unusedTreasures.push Treasure.new('Lanzallamas', 4, TreasureKind::BOTHHANDS)
      @unusedTreasures.push Treasure.new('Necro-comicón', 1, TreasureKind::ONEHAND)
      @unusedTreasures.push Treasure.new('Necronomicón', 5, TreasureKind::BOTHHANDS)
      @unusedTreasures.push Treasure.new('Linterna a 2 manos', 3, TreasureKind::BOTHHANDS)
      @unusedTreasures.push Treasure.new('Necro-gnomicón', 2, TreasureKind::ONEHAND)
      @unusedTreasures.push Treasure.new('Necrotelecom', 2, TreasureKind::HELMET)
      @unusedTreasures.push Treasure.new('Mazo de los antiguos', 3, TreasureKind::ONEHAND)
      @unusedTreasures.push Treasure.new('Necro-playboycón', 3, TreasureKind::ONEHAND)
      @unusedTreasures.push Treasure.new('Porra preternatural', 2, TreasureKind::ONEHAND)
      @unusedTreasures.push Treasure.new('Shogulador', 1, TreasureKind::BOTHHANDS)
      @unusedTreasures.push Treasure.new('Varita de atizamiento', 3, TreasureKind::ONEHAND)
      @unusedTreasures.push Treasure.new('Tentáculo de pega', 2, TreasureKind::HELMET)
      @unusedTreasures.push Treasure.new('Zapato deja-amigos', 1, TreasureKind::SHOES)
    end
    private :initTreasureCardDeck

    def initMonsterCardDeck

      @unusedMonsters = Array.new
      @usedMonsters = Array.new

      # Monstruo 1 -> Byakhees de bonanza
      prize = Prize.new(2, 1)
      bad_consequence = SpecificBadConsequence.new('Pierdes tu armadura visible y otra oculta', 0, [TreasureKind::ARMOR], [TreasureKind::ARMOR])
      @unusedMonsters<< Monster.new('Byakhees de bonanza', 8, prize, bad_consequence)
     
      # Monstruo 2 -> Tenochtitlan
      prize = Prize.new(1, 1)
      bad_consequence = SpecificBadConsequence.new('Embobados con el lindo primigenio te descartas de tu casco visible.', 0, [TreasureKind::HELMET], Array.new)
      @unusedMonsters<< Monster.new('Tenochtitlan', 2, prize, bad_consequence)

      # Monstruo 3 -> El sopor de dunwich
      prize = Prize.new(1, 1)
      bad_consequence = SpecificBadConsequence.new('Pierdes tu armadura visible y otra oculta.', 0, [TreasureKind::SHOES], Array.new)
      @unusedMonsters<< Monster.new('El sopor de dunwich', 2, prize, bad_consequence)

      # Monstruo 4 -> DEMONIOS DE MAGALUF
      prize = Prize.new(4, 1)
      bad_consequence = SpecificBadConsequence.new('Te atrapan para llevarte de fiesta y te dejan caer en mitad del vuelo. Descarta una mano visible y una mano oculta.', 0, [TreasureKind::ONEHAND], [TreasureKind::ONEHAND])
      @unusedMonsters<< Monster.new('Demonios de Magaluf', 2, prize, bad_consequence)

     # Monstruo 5 -> EL GORRON DEL UMBRAL
      prize = Prize.new(3, 1)
      bad_consequence = NumericBadConsequence.new('Pierdes todos tus tesoros visibles.', 0, 0, 0 )
      @unusedMonsters<< Monster.new('Demonios de Magaluf', 2, prize, bad_consequence)

      # Monstruo 6 -> H.P Munchcraft
      prize = Prize.new(2, 1)
      bad_consequence = SpecificBadConsequence.new('Pierdes la armadura visible.', 0, [TreasureKind::ARMOR], Array.new)
      @unusedMonsters<< Monster.new('H.P. Munchcraft', 6, prize, bad_consequence)

      # Monstruo 7 -> Necrofago
      prize = Prize.new(1, 1)
      bad_consequence = SpecificBadConsequence.new('Sientes bichos bajo la ropa. Descarta la armadura visible.', 0, [TreasureKind::ARMOR], Array.new)
      @unusedMonsters<< Monster.new('Necrofago', 13, prize, bad_consequence)

      # Monstruo 8 -> El rey de rosado
      prize = Prize.new(3, 2)
      bad_consequence = NumericBadConsequence.new('Pierdes 5 niveles y 3 tesoros visibles.', 5, 3, 0)
      @unusedMonsters<< Monster.new('El rey de rosado', 11, prize, bad_consequence)

      # Monstruo 9 -> FLECHER
      prize = Prize.new(1, 1)
      bad_consequence = NumericBadConsequence.new('Toses los pulmones y pierdes 2 niveles.', 2, 0, 0)
      @unusedMonsters<< Monster.new('Flecher', 2, prize, bad_consequence)

      # Monstruo 10 -> Los hondos
      prize = Prize.new(2, 1)
      bad_consequence = DeathBadConsequence.new('Estos monstruos resultan bastante superficiales y te aburren mortalmente. Estas muerto')
      @unusedMonsters<< Monster.new('Los hondos', 8, prize, bad_consequence)

      # Monstruo 11 -> Semillas Cthulhu
      prize = Prize.new(2, 1)
      bad_consequence = NumericBadConsequence.new('Pierdes 2 niveles y 2 tesoros ocultos.', 2, 0, 2)
      @unusedMonsters<< Monster.new('Semillas Cthulhu', 4, prize, bad_consequence)

      # Monstruo 12 -> Dameargo
      prize = Prize.new(2, 1)
      bad_consequence = SpecificBadConsequence.new('Te intentas escaquear. Pierdes una mano visible.', 0, [TreasureKind::ONEHAND], Array.new)
      @unusedMonsters<< Monster.new('Dameargo', 1, prize, bad_consequence)

      # Monstruo 13 -> Pollipólipo volante
      prize = Prize.new(2, 1)
      bad_consequence = NumericBadConsequence.new('Da mucho asquito. Pierdes 3 niveles.', 3, 0, 0)
      @unusedMonsters<< Monster.new('Pollipólipo volante', 3, prize, bad_consequence)

      # Monstruo 14 -> Yskhtihyssg-Goth
      prize = Prize.new(3, 1)
      bad_consequence = DeathBadConsequence.new('No le hace gracia que pronuncien mal su nombre. Estas muerto')
      @unusedMonsters<< Monster.new('Yskhtihyssg-Goth', 14, prize, bad_consequence)

      # Monstruo 15 -> Familia feliz
      prize = Prize.new(3, 1)
      bad_consequence = DeathBadConsequence.new('La familia te atrapa. Estás muerto.')
      @unusedMonsters<< Monster.new('Familia feliz', 1, prize, bad_consequence)

      # Monstruo 16 -> Roboggoth
      prize = Prize.new(2, 1)
      bad_consequence = SpecificBadConsequence.new('La quinta directiva primaria te obliga a perder 2 niveles y un tesoro 2 manos visible', 2, [TreasureKind::BOTHHANDS], Array.new)
      @unusedMonsters<< Monster.new('Roboggoth', 8, prize, bad_consequence)

      # Monstruo 17 -> El espía sordo
      prize = Prize.new(1, 1)
      bad_consequence = SpecificBadConsequence.new('Te asusta en la noche. Pierdes un casco visible.', 0, [TreasureKind::HELMET], Array.new)
      @unusedMonsters<< Monster.new('El espía sordo', 5, prize, bad_consequence)

      # Monstruo 18 -> Tongue
      prize = Prize.new(2, 1)
      bad_consequence = NumericBadConsequence.new('Menudo susto te llevas. Pierdes 2 niveles y 5 tesoros visibles.', 2, 5, 0)
      @unusedMonsters<< Monster.new('Tongue', 19, prize, bad_consequence)

       # Monstruo 19 -> Bicefalo
      prize = Prize.new(2, 1)
      bad_consequence = SpecificBadConsequence.new('Te faltan manos para tanta cabeza. Pierdes 3 niveles y tus tesoros visibles de las manos.', 3, [TreasureKind::ONEHAND, TreasureKind::BOTHHANDS], Array.new)
      @unusedMonsters<< Monster.new('Bicefalo', 21, prize, bad_consequence)
      
      
      #*************************** New Monsters that changes combatLvL against cultist players ******************************#
      
       # Monstruo 20 -> El mal indecible impronunciable
      prize = Prize.new(3, 1)
      bad_consequence = SpecificBadConsequence.new('Pierdes 1 mano visible', 0, [TreasureKind::ONEHAND], Array.new)
      @unusedMonsters<< Monster.new('El mal indecible impronunciable', 10, prize, bad_consequence, -2)
      
      # Monstruo 21 -> Testigos oculares
      prize = Prize.new( 2, 1)
      bad_consequence = SpecificBadConsequence.new('Pierdes tus tesoros visibles. Jajaja.', 0, [TreasureKind::ARMOR, TreasureKind::ONEHAND,TreasureKind::BOTHHANDS, TreasureKind::HELMET, TreasureKind::SHOES, TreasureKind::NECKLACE], Array.new)
      @unusedMonsters<< Monster.new('Testigos Oculares', 6, prize, bad_consequence, +2)      
      
      # Monstruo 22 -> EL gran cthulhu
      prize = Prize.new( 2, 5)
      bad_consequence = DeathBadConsequence.new('Hoy no es tu dia de suerte. Mueres.')
      @unusedMonsters<< Monster.new('El gran cthulhu', 20, prize, bad_consequence, +4)  
      
      # Monstruo 23 -> Serpiente Político
      prize = Prize.new( 2, 1)
      bad_consequence = SpecificBadConsequence.new('Tu gobierno te recorta 2 niveles.', 2, Array.new, Array.new)
      @unusedMonsters<< Monster.new('Serpiente Político', 8, prize, bad_consequence, -2)      
     
      # Monstruo 24 -> Felpuggoth
      prize = Prize.new( 1, 1)
      bad_consequence = SpecificBadConsequence.new('Pierdes tu casco y tu armadura visible. Pierdes tus manos ocultas.', 0, [TreasureKind::ARMOR, TreasureKind::HELMET], [TreasureKind::ONEHAND, TreasureKind::BOTHHANDS])
      @unusedMonsters<< Monster.new('Felpuggoth', 2, prize, bad_consequence, +5)  
      
      # Monstruo 25 -> Shoggoth
      prize = Prize.new( 4, 2)
      bad_consequence = SpecificBadConsequence.new('Pierdes 2 niveles.', 2, Array.new, Array.new)
      @unusedMonsters<< Monster.new('Shoggoth', 16, prize, bad_consequence, -4)  
      
      # Monstruo 26 -> Lolitagooth
      prize = Prize.new( 1, 1)
      bad_consequence = SpecificBadConsequence.new('Pintalabios negro. Pierdes 2 niveles.', 2, Array.new, Array.new)
      @unusedMonsters<< Monster.new('Lolitagooth', 2, prize, bad_consequence, +3)  
    end
    private :initMonsterCardDeck

    def  initCultistCardDeck
      @unusedCultists = Array.new
      
      @unusedCultists << Cultist.new("Cultista 01",1)
      @unusedCultists << Cultist.new("Cultista 02",2)
      @unusedCultists << Cultist.new("Cultista 03",1)
      @unusedCultists << Cultist.new("Cultista 04",2)
      @unusedCultists << Cultist.new("Cultista 05",1)
      @unusedCultists << Cultist.new("Cultista 06",1)
      
    end
    private :initCultistCardDeck
    
    
    def shuffleTreasures
      @unusedTreasures.shuffle
    end

    def shuffleMonsters
      @unusedMonsters.shuffle
    end

    def shuffleCultist
			@unusedCultists.shuffle

    end
    private:shuffleCultist

    def nextTreasure
      # Si no quedan cartas:
      if @unusedTreasures.empty? then
        # Devolvemos las cartas que se han usado al mazo
        @unusedTreasures = @usedTreasures
        # Las borramos del mazo de usadas
        @usedTreasures.clear
        # Y barajamos el mazo
        shuffleTreasures
      end
      
      siguiente_tesoro = @unusedTreasures[ @unusedTreasures.size-1 ]
      @unusedTreasures.delete_at( @unusedTreasures.size-1 )

      siguiente_tesoro
    end

    def nextMonster
      # Si no quedan cartas:
      if @unusedMonsters.empty? then
        # Devolvemos las cartas que se han usado al mazo
        @unusedMonsters = @usedMonsters
        # Las borramos del mazo de usadas
        @usedMonsters.clear
        # Y barajamos el mazo
        shuffleMonsters
      # Si quedan cartas
      end
      
      siguiente_monstruo = @unusedMonsters[ @unusedMonsters.size-1 ]
      @unusedMonsters.delete( @unusedMonsters.size-1 )
        
      siguiente_monstruo
    end

    def nextCultist
      if(@unusedCultists.empty?)
        puts "No quedan sectarios"
        next_cultist = nil
      else
        next_cultist = @unusedCultists[0]
        @unusedCultists.delete(next_cultist)
      end
      next_cultist
    end
    
    def giveTreasureBack( t )
      @usedTreasures << t
    end

    def giveMonsterBack( m )
      @usedTreasures << m
    end

    def initCards
      initTreasureCardDeck
      initMonsterCardDeck
      initCultistCardDeck
      shuffleTreasures
      shuffleMonsters
      shuffleCultist
    end

  end
end