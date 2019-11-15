class Player
  def hand
    puts "数字を入力してください"
    puts "0:グー"
    puts "1:チョキ"
    puts "2:パー"

    @player_hand = gets.to_i
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
  end
end

class Enemy
  def hand
@enemy_hand = rand(3)
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
  end
end

class Janken
  def pon(@player_hand, @enemy_hand)
    while true
    puts "数字を入力してください"
    puts "0:グー"
    puts "1:チョキ"
    puts "2:パー"

    if @player_hand != 0 && @player_hand != 1 && @player_hand != 2
    puts "0〜2の数字を入力してください。"
  elsif (@player_hand - @enemy_hand + 3) % 3 == 0
    puts "あいこです。再度0〜2の数字を入力してください。"
  elsif (@player_hand - @enemy_hand + 3) % 3 == 1
  @judgement = "負け"
    break
  elsif (@player_hand - @enemy_hand + 3) % 3 == 2
    @judgement = "勝ち"
    break
    else
    puts "0〜2の数字を入力してください。"
    end
    end

    if @enemy_hand == 0
    @enemy_hand = "グー"
  elsif @enemy_hand == 1
    @enemy_hand = "チョキ"
    else
    @enemy_hand = "パー"
    end

    puts player_hand
    puts "相手の手は#{@enemy_hand}です。あなたの#{@judgement}です。"
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)
