
while true
puts "数字を入力してください"
puts "0:グー"
puts "1:チョキ"
puts "2:パー"

player_hand = gets.to_i # to_iの追記
enemy_hand = rand(3) # enemy_hand = {"ランダムで数字を取得"}

if (player_hand - enemy_hand + 3) % 3 == 0
puts "あいこです。再度0〜2の数字を入力してください。"
elsif (player_hand - enemy_hand + 3) % 3 == 1
judgement = "負け"
break
elsif (player_hand - enemy_hand + 3) % 3 == 2
judgement = "勝ち"
break
else
puts "0〜2の数字を入力してください。"
end
end

#Enemy = {"enemy_handから数値を受け取りグーチョキパーを示す。"}
if enemy_hand == 0
Enemy = "グー"
elsif enemy_hand == 1
Enemy = "チョキ"
else
Enemy = "パー"
end

puts player_hand
puts "相手の手は#{Enemy}です。あなたの#{judgement}です。"