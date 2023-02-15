def janken 
  
  jankens=["グー","チョキ","パー"]
  puts "じゃんけんぽん"
  puts "[0]グー\n[1]チョキ\n[2]パー\n[3]終了"
  player_hand=gets.to_i
  program_hand=rand(3)
  
  if player_hand > 2
    puts "終了"
    return false
  end
  
  puts "あなたは#{jankens[player_hand]}を出しました。"
  puts "相手は#{jankens[program_hand]}を出しました。"
  
  if player_hand == program_hand
    puts "あいこ"
    return true
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "じゃんけんに勝ちました。"
    $result = "win"
    direction
  else
    puts "じゃんけんに負けました。"
    $result = "lose"
    direction
  end
end

def direction
  directions=["上","下","左","右"]
  puts "あっちむいてほい"
  puts "[0]上\n[1]下\n[2]左\n[3]右"
  player_direction=gets.to_i
  program_direction=rand(4)
  puts "あなたは#{directions[player_direction]}を出しました。"
  puts "相手は#{directions[program_direction]}を出しました。"
  if (player_direction == program_direction) && ($result=="win")
    puts "あなたの勝ち！"
  elsif (player_direction == program_direction) && ($result=="lose")
    puts "あなたの負け。"
  else
    puts "もう一回！"
    return true
  end
end

next_game = true

while next_game
  next_game = janken
end