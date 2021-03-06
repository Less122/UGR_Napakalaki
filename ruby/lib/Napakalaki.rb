#encoding: UTF-8

require "singleton"
require_relative "BadConsequence"
require_relative "CardDealer"
require_relative "CombatResult"
require_relative "Dice"
require_relative "Monster"
require_relative "Player"
require_relative "Prize"
require_relative "Treasure"
require_relative "TreasureKind"

module NapakalakiGame
  
  class Napakalaki

    include Singleton
    attr_accessor :currentPlayer, :players, :dealer, :currentMonster

    def initialize
      @currentPlayer = nil
      @currentMonster = nil
      @players = Array.new
      @dealer = CardDealer.instance
    end

    def initPlayers( names )
      names.each do |name|
        @players << Player.new( name )
      end
    end
    private :initPlayers

    def nextPlayer
      # Si nunca se ha inizializado entonces empieza cualquier jugador 
      # aleatoriamente.
      if @current_player == nil then
        indice = rand( @players.size )

      # De lo contrario hay dos opciones
      else
        indice_actual = @players.index( @currentPlayer )

        # Que sea el ultimo jugador de la lista, por lo que empieza por el 
        # primero de nuevo.
        if indice_actual == @players.size then
          indice = 0
        # Que no sea el ultimo por lo que salta al siguiente.
        else
          indice = indice_actual + 1
        end
      end
      @current_player = @players[ indice ]

      @current_player
    end
    private :nextPlayer

    def nextTurnAllowed
      if @current_player == nil then
          permitido = true
      else
          permitido = @current_player.validState
      end
      permitido
    end
    private :nextTurnAllowed

    def setEnemies
      for i in 0..( @players.size - 1 )
        enemigo = rand( @players.size )
        # Hasta que no genere un numero aleatorio que no coincida con su indice
        # no sigue adelante.
        while i == enemigo do
          enemigo = rand( @players.size )
        end
        @players[i].enemy = @players[ enemigo ]
      end
    end
    private :setEnemies

    def developCombat
      resultado = @currentPlayer.combat( @currentMonster )
      @dealer.giveMonsterBack( @currentMonster )
      if(resultado == CombatResult::LOSEANDCONVERT) then
        cultist = CultistPlayer.new(@currentPlayer, @dealer.nextCultist)
        @players[@players.index(@currentPlayer)] = cultist
        @player.each do |player|
          if(player.enemy == @currentPlayer) then
            player.enemy = cultist
          end
        end
        @currentPlayer = cultist
      end
      resultado
    end

    def discardVisibleTreasures( treasures )
      for i in 0..( treasures.size - 1 )
        @currentPlayer.discardVisibleTreasure( treasures[i] )
        @dealer.giveTreasureBack( treasures[i] )
      end
    end

    def discardHiddenTreasures( treasures )
      for i in 0..( treasures.size - 1 )
        @currentPlayer.discardHiddenTreasure( treasures[i] )
        @dealer.giveTreasureBack( treasures[i] )
      end
    end

    def makeTreasuresVisible( treasures )
      for i in 0..( treasures.size - 1 )
        @currentPlayer.makeTreasureVisible( treasures[i] )
      end
    end

    def initGame( players )
      initPlayers( players )
      setEnemies
      @dealer.initCards
      nextTurn
    end

    def nextTurn
      stateOK = nextTurnAllowed

      if stateOK then
        @currentMonster = @dealer.nextMonster
        @currentPlayer = nextPlayer
        if (@currentPlayer.dead)
					 @currentPlayer.initTreasures
				end

      end
      stateOK
    end

    def endOfGame( result )
      return ( result == WINGAME )
    end

    def getCurrentPlayer
      @currentPlayer
    end

    def getCurrentMonster
      @currentMonster
    end
  end

end