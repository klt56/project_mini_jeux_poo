require "pry"

class Player
  attr_accessor :name, :life_point

    def initialize(name)
      @name = name
      @life_point = 10
  end
    def show_state
      show_state = "#{@name} a #{@life_point} de vie"
  end
    def gets_damage(damage)
      @life_point = @life_point - damage
       
     if @life_point <= 0
      puts "#{@name} est mort !"
    end
  end

    def attack(player)
      puts "#{@name} attack #{player.name}"
      attack_deal = compute_damage
      puts "il lui inflige #{attack_deal} de point de vie"
      player.gets_damage(attack_deal)
  end
    def compute_damage
    return rand(1..6)
  end
end
