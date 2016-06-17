# ハッシュwordsを定義してください
words = { apple: "りんご", dog: "犬", book: "本", milk: "牛乳", library: "図書館" }

# 質問数を入れる変数loop_countを定義し0を代入してください
loop_count = 0

# 正解数を入れる変数correct_countを定義し0を代入してください
correct_count = 0

puts "英単語ゲームスタート！stopと入力したら中断します。"

# wordsに対して繰り返し処理を行うeach文を作成してください
words.each do |key,value|
  puts "#{value}に対応する英単語を入力してください。"

  # 変数answerにgets.chompで受け取った値を代入してください
  answer = gets.chomp

  # answerの値によって条件を分岐してください
  if answer == "stop"
    break
  elsif answer == key.to_s
    puts "正解です"
    # correct_countの値を1増やしてください
    correct_count += 1
  else
    puts "不正解です"
  end

  # loop_countの値を1増やしてください
  loop_count += 1
end

# 正解率を計算するpercentageメソッドを定義してください
def percentage(a, b)
  return 0 if b == 0
  return a * 100 / b
end

# percentageメソッドを呼び出して、戻り値を変数pに代入してください
p = percentage(correct_count, loop_count)

# "あなたの正解率は◯◯パーセントです"と表示してください
puts "あなたの正解率は#{p}パーセントです"
