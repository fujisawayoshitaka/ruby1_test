class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する


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
      return player_hand
  end
end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    enemy_hand = rand(3) # enemy_hand = {"ランダムで数字を取得"}
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    while true
      if player_hand != 0 && player_hand != 1 && player_hand != 2
        puts "0〜2の数字を入力してください。"
        input_hand = gets
        if input_hand == "0\n" || input_hand == "1\n" || input_hand == "2\n"
          player_hand = input_hand.to_i

        else
          player_hand = input_hand

        end
      elsif (player_hand - enemy_hand + 3) % 3 == 0
        puts "あいこです。再度0〜2の数字を入力してください。"
        input_hand = gets
        if input_hand == "0\n" || input_hand == "1\n" || input_hand == "2\n"
          player_hand = input_hand.to_i

        else
          player_hand = input_hand

        end
      elsif (player_hand - enemy_hand + 3) % 3 == 1
        judgement = "負け"
        break
      elsif (player_hand - enemy_hand + 3) % 3 == 2
        judgement = "勝ち"
        break
      end
    end


    if enemy_hand == 0
    enemy_hand = "グー"
    elsif enemy_hand == 1
    enemy_hand = "チョキ"
    else
    enemy_hand = "パー"
    end

    puts player_hand
    puts "相手の手は#{enemy_hand}です。あなたの#{judgement}です。"

 end






    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
  end


player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)
