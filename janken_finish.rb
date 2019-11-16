
while true

  puts "数字を入力してください"
  puts "0:グー"
  puts "1:チョキ"
  puts "2:パー"

  input_hand = gets
  if input_hand == "0\n" || input_hand == "1\n" || input_hand == "2\n"
    player_hand = input_hand.to_i

  else
    player_hand = input_hand

  end
   # to_iの追記

  enemy_hand = rand(3) # enemy_hand = {"ランダムで数字を取得"}

 if player_hand != 0 && player_hand != 1 && player_hand != 2
   puts "0〜2の数字を入力してください。"
 elsif (player_hand - enemy_hand + 3) % 3 == 0
   puts "あいこです。再度0〜2の数字を入力してください。"
 elsif (player_hand - enemy_hand + 3) % 3 == 1
   judgement = "負け"
   break
 elsif (player_hand - enemy_hand + 3) % 3 == 2
   judgement = "勝ち"
   break
 end

end

#Enemy = {"enemy_handから数値を受け取りグーチョキパーを示す。"}
if enemy_hand == 0
enemy_hand = "グー"
elsif enemy_hand == 1
enemy_hand = "チョキ"
else
enemy_hand = "パー"
end

puts player_hand
puts "相手の手は#{enemy_hand}です。あなたの#{judgement}です。"
