def slot_game
select_coin = [0,10,30,50]
point = 0
coin = 100
loop do
puts "----------------"
puts "残りコイン数:#{coin}"
puts "残りポイント数:#{point}"
puts "何コイン入れますか？？"
puts "1(10コイン)2(30コイン)3(50コイン)"

insert_coin = gets.to_i
coin = coin - select_coin[insert_coin]
if coin < 0
  puts "コインが足りません。チャージしてください。"
  break
end
num1 = rand(0..9)
num2 = rand(0..9)
num3 = rand(0..9)
num4 = rand(0..9)
num5 = rand(0..9)
num6 = rand(0..9)
num7 = rand(0..9)
num8 = rand(0..9)
num9 = rand(0..9)

puts "ゲームスタート！！3回エンターキーを押してください！"

push = gets
puts "----------------"
puts "|#{num1}|||"
puts "|#{num2}|||"
puts "|#{num3}|||"

push = gets
puts "----------------------"
puts "|#{num1}|#{num4}||"
puts "|#{num2}|#{num5}||"
puts "|#{num3}|#{num6}||"

push = gets
puts "----------------------"
puts "|#{num1}|#{num4}|#{num7}|"
puts "|#{num2}|#{num5}|#{num8}|"
puts "|#{num3}|#{num6}|#{num9}|"
puts "----------------------"
if (num2 == 7) && (num5 == 7) && (num8 == 7)
  puts "ラッキーセブン！真ん中に7が揃いました！！"
  puts "500ポイントを獲得！！"
  puts "100コイン獲得！！"
  point = point + 500 
  coin = coin + 100
elsif (num2 == num5) && (num5 == num8)
  puts "当たり！！数字が揃いました！！"
  puts "200ポイントを獲得！！"
  puts "50コイン獲得！！"
  point = point + 200 
  coin = coin + 50
elsif (num1 == num5) && (num5 == num9)
  puts "当たり！！数字が揃いました！！"
  puts "200ポイントを獲得！！"
  puts "50コイン獲得！！"
  point = point + 200 
  coin = coin + 50
elsif (num3 == num5) && (num5 == num7)
  puts "当たり！！数字が揃いました！！"
  puts "200ポイントを獲得！！"
  puts "50コイン獲得！！"
  point = point + 200 
  coin = coin + 50
end
if coin == 0
  puts "コインが足りません。チャージしてください。"
  break
end
 puts "1(再BETする) 2(終了する)"
 select_number = gets.to_i

 if select_number == 2
   puts "終了しました。"
   break
 end
end
end

slot_game