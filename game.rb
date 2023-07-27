# じゃんけん
def janken
puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    your = gets.to_i

    if your == 3
        puts "また今度遊びましょう！"
        exit
    end

    partner = rand(3)
# 自分
        if your == 0
            your_game = "グー"
        elsif your == 1
            your_game = "チョキ"
        else your == 2
            your_game = "パー"
        end
# 相手
        if partner == 0
            partner_game = "グー"
        elsif partner == 1
            partner_game = "チョキ"
        else partner == 2
            partner_game = "パー"
        end

puts "ホイ!"
puts "--------------"
puts "あなた:#{your_game}を出しました"
puts "相手:#{partner_game}を出しました"
puts "--------------"

    if your == partner
        puts "あいこで..."
        puts "ショ!"
        puts "--------------"
        return true
    elsif your == 0 && partner == 1 || your == 1 && partner == 2 || your == 2 && partner == 0
        return finger_face
    else
        return face_finger
    end
end

# あっち向いてホイ 自分（指）finger　相手（顔）face
def finger_face
puts "あっち向いて~"
puts "0(上)1(下)2(左)3(右)"
    your_finger = gets.to_i
        if 0 > your_finger || your_finger > 3
            puts "0(上)1(下)2(左)3(右)のいずれかを選んでください"
        end
    partner_face = rand(3)

    if your_finger == 0
        your_hand = "上"
    elsif your_finger == 1
        your_hand = "下"
    elsif your_finger == 2
        your_hand = "左"
    else your_finger == 3
        your_hand = "右"
    end

    if partner_face == 0
        partner_direction = "上"
    elsif partner_face == 1
        partner_direction = "下"
    elsif partner_face == 2
        partner_direction = "左"
    else partner_face == 3
        partner_direction = "右"
    end

puts "ホイ!"
puts "--------------"
puts "あなた:#{your_hand}"
puts "相手:#{partner_direction}"
puts "--------------"

    if your_hand == partner_direction
        puts "おめでとうございます。あなたの勝ちです!"
        exit
    else
        return true
    end
end

# あっち向いてホイ 自分（顔）face 相手（指）finger　
def face_finger
puts "あっち向いて~"
puts "0(上)1(下)2(左)3(右)"
    your_face = gets.to_i
        if 0 > your_face || your_face > 3
            puts "0(上)1(下)2(左)3(右)のいずれかを選んでください"
        end
    partner_finger = rand(3)

    if your_face == 0
        your_direction = "上"
    elsif your_face == 1
        your_direction = "下"
    elsif your_face == 2
        your_direction = "左"
    else your_face == 3
        your_direction = "右"
    end

    if partner_finger == 0
        partner_hand = "上"
    elsif partner_finger == 1
        partner_hand = "下"
    elsif partner_finger == 2
        partner_hand = "左"
    else partner_finger == 3
        partner_hand = "右"
    end

    puts "ホイ!"
    puts "--------------"
    puts "あなた:#{your_direction}"
    puts "相手:#{partner_hand}"
    puts "--------------"
    
        if your_direction == partner_hand
            puts "残念ながらあなたの負けです。"
            exit
        else
            return true
        end
end

next_game = true
puts "じゃんけん..."
while next_game do
    next_game = janken
end