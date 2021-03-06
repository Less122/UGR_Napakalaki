require_relative 'Player.rb'
require_relative 'Cultist.rb'
require_relative 'Dice.rb'


module NapakalakiGame
  

class CultistPlayer < Player
  attr_reader :totalCultistPlayers
  attr_accessor :myCultistCard
  @@totalCultistPlayers = 0
  
  def initialize(player, cultist)
   @@totalCultistPlayers += 1
   super(player.name)
   copyConstructor(player)
   @myCultistCard = cultist
  end
  
  def getCombatLevel
    combatLevel = super + super * 0.7
    combatLevel += @myCultistCard.getGainedLevels * totalCultistPlayers
    combatLevel.floor
  end
  
  def getOponentLevel(monster)
    monster.getCombatLevelAgainstCultistPlayer
  end
  
  def shouldConvert
    false
  end
  
  def giveMeATreasure
    treasure = @visibleTreasures.at(rand(@visibleTreasures.size))
    @visibleTreasures.delete(treasure)
    treasure
  end
  private :giveMeATreasure
  
  def canYouGiveMeATreasure
    !@visibleTreasures.empty?
  end
  private :canYouGiveMeATreasure
  
  
end

end