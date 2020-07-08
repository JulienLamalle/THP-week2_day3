class Stairway
  attr_accessor :position
  attr_accessor :throw_number
  attr_accessor :game_mode

  def initialize
    @position = 0
    @throw_number = 0
    @game_mode = 0
    @game_stats = []
  end

  def ask_for_game_mode
    puts "Tape 1 si tu veux faire une partie en mode automatique Tranquilou bilou"
    puts "Tape 2 si tu veux lancer 100 parties en mode automatique pour pouvoir calculer le nombre moyen de tour par partie pour arriver en position 10"
    user_choice = gets.chomp.to_i

    if user_choice == 1 
      @game_mode = 1 
      automatic_game
    elsif user_choice == 2
      game_mode = 1
      average_finish_time
    elsif user_choice != 1 || user_choice != 2
      exit
    end
  end

  def automatic_game
    while @position != 10
      throw_dice
    end
  end


  def average_finish_time
    100.times do |i|
      game_mode = 1
      automatic_game
      @game_stats[i] = @throw_number
    end

    number_of_to_visites = 0
    
    @game_stats.each do |game_stat|
      number_of_to_visites = number_of_to_visites + game_stat
    end
    
    average_tours_for_ten = number_of_to_visites / @game_stats.length

    puts "En moyenne pour arriver à la 10ème marche le nombre de tour est de #{average_tours_for_ten}"
  end

  def throw_dice
    @throw_number = @throw_number += 1
    dice = rand(1..6)
    
    # Execute an action depending the dice' result
    if dice == 1
      if position < 0 
        puts "Tu peux pas déscendre plus bas gros tu restes là"
        puts " Tu es désormais à la position #{position}"
      elsif position > 0 
      puts "Tu viens de faire un sacré retour en arrière"
      @position = @position -= 1
      puts " Tu es désormais à la position #{position}"
      end
    end
    if dice == 5 || dice == 6 
      puts "BIEEEEEEEEEEEEEN, t'avances d'une case"
      @position = @position += 1
      puts " Tu es désormais à la position #{position}"
    end
    if dice >= 2 && dice <= 4
      puts "Tu bouges pas tu restes dans ta merde gros"
      puts " Tu restes à la position #{position}"
    end
    if position == 10 
      puts "T'es énorme GG Broooooooooooooooooo"
    end
    if game_mode == 1
      automatic_game
    end
  end
end

def perform 
  puts "Bienvenu dans le jeu du tu avances tu recules ou tu fais rien "
  puts "Te connaissant tu vas souvent rien faire..."
  puts "Quelle triste vie"
  game = Stairway.new
  game.ask_for_game_mode
end

perform