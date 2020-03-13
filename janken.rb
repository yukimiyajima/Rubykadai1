class Player
  def hand
    puts "数字を入力してください"
    puts " 0:グー\n 1:チョキ\n 2:パー\n"
    input_hand = gets.chomp
    while true
      unless input_hand == "0" || input_hand == "1" || input_hand == "2"
        puts "もう一度数字を入力してください"
        input_hand = gets.chomp
      else
        return input_hand.to_i
      end 
    end
  end
end

class Enemy
  def hand
    enemy_hand = rand(3)
  end
end

class Janken
  def pon(input_hand,enemy_hand)
    janken = ["グー", "チョキ","パー"]
    if (input_hand - enemy_hand + 3) % 3 == 0
      puts "相手の手は#{janken[enemy_hand]}です。"
      puts "あいこ"
      return true

    elsif (input_hand - enemy_hand + 3) % 3 == 2
      puts "相手の手は#{janken[enemy_hand]}です"
      puts "あなたの勝ちです"
      return false

    else (input_hand - enemy_hand + 3) % 3 == 1
      puts "相手の手は#{janken[enemy_hand]}です"
      puts "あなたの負けです"
      return false
    end
  end
end
player = Player.new
enemy = Enemy.new
janken = Janken.new
next_game = true
while
 next_game = janken.pon(player.hand, enemy.hand)
end