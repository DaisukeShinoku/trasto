# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#ユーザー

# 1
User.create!(
  account_name: 'trasto',
  display_name: '公式アカウント',
  email: 'trasto@trasto.com',
  password: '111111',
  password_confirmation: '111111',
  introduction: "公式アカウントです",
  avatar: open("#{Rails.root}/db/fixtures/user/trasto.png"),
  admin: true,
  activated: true,
  activated_at: Time.zone.now
)

# 2
User.create!(
  account_name: 'guest',
  display_name: 'ゲストアカウント',
  email: 'guest@trasto.com',
  password: '111111',
  password_confirmation: '111111',
  introduction: "ゲストアカウントです",
  avatar: open("#{Rails.root}/db/fixtures/user/guest.png"),
  admin: true,
  activated: true,
  activated_at: Time.zone.now
)

# 3
User.create!(
  account_name: 'user3',
  display_name: 'ネコ太郎',
  email: '333@user.com',
  password: '333333',
  password_confirmation: '333333',
  introduction: "吾輩は猫である。名前はまだ無い。どこで生れたかとんと見当がつかぬ。
  何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。
  吾輩はここで始めて人間というものを見た。しかもあとで聞くとそれは書生という人間中で一番獰悪な種族であったそうだ。",
  avatar: open("#{Rails.root}/db/fixtures/user/user1.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 4
User.create!(
  account_name: 'user4',
  display_name: '坊っちゃん',
  email: '444@user.com',
  password: '444444',
  password_confirmation: '444444',
  introduction: "親譲りの無鉄砲で小供の時から損ばかりしている。
  小学校に居る時分学校の二階から飛び降りて一週間ほど腰を抜かした事がある。
  なぜそんな無闇をしたと聞く人があるかも知れぬ。別段深い理由でもない。",
  avatar: open("#{Rails.root}/db/fixtures/user/user2.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 5
User.create!(
  account_name: 'user5',
  display_name: '漱石くん',
  email: '555@user.com',
  password: '555555',
  password_confirmation: '555555',
  introduction: "私はまあ煩悶のものにご学問は売っが得るたですうなけれて、二二の人が別段しだによって説明なて、
  だからこの英語の自信が抜いがらが、彼らかが何の職業を発展が叱ると来るたものならうと話しが意味云え行くますだ。
  文章にそれで槙君がそれでまだ引き離すしものましなかった。",
  avatar: open("#{Rails.root}/db/fixtures/user/user3.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 6
User.create!(
  account_name: 'user6',
  display_name: 'マルチタスク',
  email: '666@user.com',
  password: '666666',
  password_confirmation: '666666',
  introduction: "それを人間に当てはめて、同時並行的に複数の仕事をこなせる人を
  「マルチタスク型人間」なんて言うみたいですね。
  複数のプロジェクトを同時進行で進められるとか。",
  avatar: open("#{Rails.root}/db/fixtures/user/user4.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 7
User.create!(
  account_name: 'user7',
  display_name: '集中ちゃん',
  email: '777@user.com',
  password: '777777',
  password_confirmation: '777777',
  introduction: "一度に一つの事に集中しなさいとか、
  一番重要なことを最初にしなさいとか、
  管理する方法を考えるより、管理する対象を少なくする方がいいとか、
  言っている事はかなりクラシックです。",
  avatar: open("#{Rails.root}/db/fixtures/user/user5.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 8以降
50.times do |n|
  User.create!(
    account_name: "mobu#{n+1}",
    display_name: "ダミー太郎#{n+1}号",
    email: "example-#{n+1}@example.com",
    password: '111111',
    password_confirmation: '111111',
    introduction: "せっかくの休日に雨なんて・・・とがっかりせずに、
    雨だからこそ家でゆっくりと過ごせると
    発想転換してみましょう。",
    activated: true,
    activated_at: Time.zone.now
  )
  end

# リレーションシップ
users = User.all
user  = users.third
following = users[4..50]
followers = users[5..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }


# ツイート
  10.times do |n|
    Tweet.create!(
    user_id: rand(3..7),
    content: "ハヤトは小学５年生。
    中肉中背の、あまり目立たない男の子だ。
    サッカー部に入っているが、レギュラーメンバーは
    クラブチームに入っているエリートばかり。
    走るのが遅く地味なプレーが多いハヤトは
    いつも補欠で、応援席を暖めている。",
    )
  end

  10.times do |n|
    Tweet.create!(
    user_id: rand(3..7),
    content: "地球から遥か彼方にある、二次元星。
    実は、地球上で見られる漫画、アニメ、絵本などの
    二次元のお話に出てくる全ての存在が
    この星で暮らしている。",
    )
  end

  10.times do |n|
    Tweet.create!(
    user_id: rand(3..7),
    content: "秋葉原の一角にオープンした、「柔道カフェ」。
    給仕はもちろん柔道着姿のマッチョなお兄様方。
    靴を脱いで入店すると青臭い畳と、
    いちおしメニューの「寒稽古の後にふるまうお汁粉」の甘い香りが
    暖かく迎えてくれます。",
    )
  end

  10.times do |n|
    Tweet.create!(
    user_id: rand(3..7),
    content: "「写真つきのツブヤキ」「写真つきのツブヤキ」「写真つきのツブヤキ」
    「写真つきのツブヤキ」「写真つきのツブヤキ」「写真つきのツブヤキ」
    「写真つきのツブヤキ」「写真つきのツブヤキ」「写真つきのツブヤキ」",
    tweet_picture: open("#{Rails.root}/db/fixtures/free/free#{rand(1..11)}.jpg")
    )
  end

20.times do |n|
  Favorite.create!(
    user_id: "3",
    tweet_id: "#{n+1}"
  )
end

20.times do |n|
  Favorite.create!(
    user_id: "4",
    tweet_id: "#{n+10}"
  )
end

20.times do |n|
  Favorite.create!(
    user_id: "5",
    tweet_id: "#{n+20}"
  )
end

20.times do |n|
  Favorite.create!(
    user_id: "6",
    tweet_id: "#{n+20}"
  )
end

20.times do |n|
  Favorite.create!(
    user_id: "7",
    tweet_id: "#{n+1}"
  )
end

40.times do |n|
  TweetComment.create!(
    user_id: rand(3..7),
    tweet_id: "#{n+1}",
    content: "この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。",
  )
end

40.times do |n|
  TweetComment.create!(
    user_id: rand(8..50),
    tweet_id: "#{n+1}",
    content: "後ろで大きな爆発音がした。俺は驚いて振り返った。",
  )
end


#カテゴリー

# 1
Category.create!(
  name: '何もないを楽しむ',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/nothing.jpg")
)
# 2
Category.create!(
  name: '観光地へのアクセス良好',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/access.jpg")
)
# 3
Category.create!(
  name: '旅人同士でワイワイ',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/tabibito.jpg")
)
# 4
Category.create!(
  name: '静かな時間を過ごせる',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/silence.jpg")
)
# 5
Category.create!(
  name: '設備が充実',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/facility.jpg")
)
# 6
Category.create!(
  name: '不便を楽しむ',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/fuben.jpg")
)
# 7
Category.create!(
  name: '女性の一人旅でも安心',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/woman.jpg")
)
# 8
Category.create!(
  name: 'ワイルドを楽しむ',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/wild.jpg")
)
# 9
Category.create!(
  name: 'スタッフがフレンドリー',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/friendly.jpg")
)
# 10
Category.create!(
  name: 'スタッフとの距離感が絶妙',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/kyori.jpg")
)
# 11
Category.create!(
  name: '海を楽しむ',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/sea.jpg")
)
# 12
Category.create!(
  name: '山を楽しむ',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/mountain.jpg")
)
# 13
Category.create!(
  name: '街を楽しむ',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/city.jpg")
)
# 14
Category.create!(
  name: '食事可能',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/meal.jpg")
)
# 15
Category.create!(
  name: 'バー併設',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/bar.jpg")
)
# 16
Category.create!(
  name: 'カフェ併設',
  is_valid: '1',
  category_image: open("#{Rails.root}/db/fixtures/category/cafe.jpg")
)

# エリア

# 1
HouseArea.create!(
  name: '北海道'
)

# 2
HouseArea.create!(
  name: '東北'
)

# 3
HouseArea.create!(
  name: '北関東'
)

# 4
HouseArea.create!(
  name: '首都圏'
)

# 5
HouseArea.create!(
  name: '北陸'
)

# 6
HouseArea.create!(
  name: '甲信越'
)

# 7
HouseArea.create!(
  name: '東海'
)

# 8
HouseArea.create!(
  name: '近畿'
)

# 9
HouseArea.create!(
  name: '山陽・山陰'
)

# 10
HouseArea.create!(
  name: '四国'
)

# 11
HouseArea.create!(
  name: '九州'
)

# 12
HouseArea.create!(
  name: '沖縄'
)

#ゲストハウス

# 1
House.create!(
  name: 'なきじんゲストハウス結家',
  postcode: '9050424',
  prefecture_code: '47',
  address: '国頭郡今帰仁村仲尾次609',
  domitory_price: '2200',
  private_price: '3500',
  copy: '旅人同士のご縁を結ぶ、賑やかなゲストハウス',
  introduction: "のんびりとゴロゴロ過ごしてもよし、短期滞在では読みきれないほどの漫画達を楽しむもよし、目の前のプライベートビーチでシュノーケルを楽しむもよし、
  夕方には初めましての旅人たちとまるで家族のように卓を囲んでお酒を飲む。「何もしないことをしにくる」、これこそが究極の贅沢だと気づかせてくれる沖縄北部のゲストハウス。
  元・木下大サーカスのアクロバット芸人の女将”結ねえ”の司会で始まる毎晩8時からの”おかず交換会”は毎日でも参加したいほどの面白さ！",
  is_valid: '1',
  house_area_id: '12',
  house_image: open("#{Rails.root}/db/fixtures/musubiya/zakimusubiya05.jpg"),
  # images: open("#{Rails.root}/db/fixtures/musubiya/musubikana4.jpg")
    # "#{Rails.root}/db/fixtures/musubiya/musubiya-moai4.jpg",
    # "#{Rails.root}/db/fixtures/musubiya/non_musubiya4.jpg",
    # "#{Rails.root}/db/fixtures/musubiya/musubikana9.jpg"), 

  # images: open("#{Rails.root}/db/fixtures/musubiya/musubikana4.jpg"), 
  # images: open("#{Rails.root}/db/fixtures/musubiya/musubiya-moai4.jpg"),
  # images: open("#{Rails.root}/db/fixtures/musubiya/non_musubiya4.jpg"),
  # images: open("#{Rails.root}/db/fixtures/musubiya/musubikana9.jpg"),
)

HouseCategory.create!(
  house_id: '1',
  category_id: '1'
)

HouseCategory.create!(
  house_id: '1',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '1',
  category_id: '9'
)

HouseCategory.create!(
  house_id: '1',
  category_id: '11'
)

HouseComment.create!(
  user_id: "3",
  house_id: "1",
  content: "綺麗な海！最高にクレイジーな旅人たち！本当にありがとうございました！
  またいきたいよーー！！！"
)

HouseComment.create!(
  user_id: "4",
  house_id: "1",
  content: "毎晩８時からのおかず交換会で友達できて、
  遅くまでお酒を飲んで、
  次の日はみんなで海の遊びに行って、
  学生の夏休みみたいな時間が過ごせました！"
)

HouseComment.create!(
  user_id: "7",
  house_id: "1",
  content: "元・ヘルパーです！たったの１ヶ月ですが、最高のプチ移住体験でした。"
)


# 2
House.create!(
  name: 'ヤーグナの空',
  postcode: '9040204',
  prefecture_code: '47',
  address: '沖縄県中頭郡嘉手納町字水釜４０８',
  domitory_price: '3500',
  private_price: '15000',
  copy: '遊びと寛ぎの宿×海風のDining Bar',
  introduction: "沖縄の海まで徒歩１分のゲストハウス。
  東シナ海沿いの静かな一軒家で味わう優雅な沖縄時間♪人の温かみ、極上の琉球創作料理に南国の島酒で心の底から笑顔になって下さい。",
  is_valid: '1',
  house_area_id: '12',
  house_image: open("#{Rails.root}/db/fixtures/yagu/yagukana3.jpg"),
  # images: open("#{Rails.root}/db/fixtures/yagu/yagukana1.jpg"),
  # open("#{Rails.root}/db/fixtures/yagu/yagukana2.jpg"),
  # open("#{Rails.root}/db/fixtures/yagu/yagukana4.jpg"),
)


HouseCategory.create!(
  house_id: '2',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '2',
  category_id: '7'
)

HouseCategory.create!(
  house_id: '2',
  category_id: '9'
)

HouseCategory.create!(
  house_id: '2',
  category_id: '11'
)

HouseComment.create!(
  user_id: "6",
  house_id: "2",
  content: "海が近くて夕陽が綺麗！！オーナーのけいさん、スタッフのたかさん、シェフのにいに、ありがとう！！"
)

HouseComment.create!(
  user_id: "5",
  house_id: "2",
  content: "沖縄マラソンの時に利用しました！前日にヤーグナで燃料（酒）を大量に詰め込んだおかげで完走できた笑"
)

HouseComment.create!(
  user_id: "7",
  house_id: "2",
  content: "看板犬のコップとノコが可愛い"
)

# 3
House.create!(
  name: '旅人宿 石垣屋',
  postcode: '5191112',
  prefecture_code: '24',
  address: '亀山市関町中町445',
  domitory_price: '2500',
  private_price: '4500',
  copy: '三重の古民家ゲストハウス',
  introduction: "ここは三重県、東海道五十三次の宿場町『関宿』。
                江戸から明治にかけての歴史的建物が200軒ほど残る町並みの中心に、日本全国からいろんな旅人が集まる、楽しいお宿です!!",
  is_valid: '1',
  house_area_id: '7',
  house_image: open("#{Rails.root}/db/fixtures/ishigakiya/ishigakiyakana5.jpg"),
  # images: open("#{Rails.root}/db/fixtures/ishigakiya/ishigakiyakana2.jpg"),
          # open("#{Rails.root}/db/fixtures/ishigakiya/ishigakiyakana3.jpg"),
          # open("#{Rails.root}/db/fixtures/ishigakiya/ishigakiyakana7.jpg"),
          # open("#{Rails.root}/db/fixtures/ishigakiya/ishigakiyakana6.jpg")
)

HouseCategory.create!(
  house_id: '3',
  category_id: '2'
)

HouseCategory.create!(
  house_id: '3',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '3',
  category_id: '5'
)

HouseCategory.create!(
  house_id: '3',
  category_id: '9'
)

HouseComment.create!(
  user_id: "5",
  house_id: "3",
  content: "日本一周の道中になぜか２週間滞在してしまった、、、なぜだ、、、笑"
)

HouseComment.create!(
  user_id: "4",
  house_id: "3",
  content: "街並みとか建物の感じも好き、でもって漫画が大量にあるのが一番テンション上がったかも。"
)

HouseComment.create!(
  user_id: "3",
  house_id: "3",
  content: "歴史を感じる建物。天気が良い日には近くの川で遊んだりできるのもGood"
)


# 4
House.create!(
  name: 'おがのゲストハウス',
  postcode: '3680201',
  prefecture_code: '11',
  address: '秩父郡小鹿野町両神薄88',
  domitory_price: '3500',
  private_price: '4800',
  copy: 'みんなの「楽しい」を詰め込んだ宿',
  introduction: "穏やかで、のんびりとした空気に包まれた町、小鹿野。透き通った川の流れ、季節を感じさせてくれる山々、新鮮な野菜。
  大きな観光スポットはないけれど、言葉では表せない「安らぎ」がここにはあります。
  「なにもしない」が最高の贅沢。忙しい日常はお家に置いて、小鹿野町でのんびりまったり休憩しませんか？",
  is_valid: '0',
  house_area_id: '4',
  house_image: open("#{Rails.root}/db/fixtures/ogagesu/daioganogh.jpg"),
)

HouseCategory.create!(
  house_id: '4',
  category_id: '1'
)

HouseCategory.create!(
  house_id: '4',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '4',
  category_id: '7'
)

HouseCategory.create!(
  house_id: '4',
  category_id: '12'
)

HouseComment.create!(
  user_id: "4",
  house_id: "4",
  content: "ロッククライミングの時に利用しています、女将のらぶこさんの朝ご飯最高！"
)

HouseComment.create!(
  user_id: "5",
  house_id: "4",
  content: "看板犬のあんこに会いに季節ごとにいっちゃう、いつも可愛い"
)

HouseComment.create!(
  user_id: "6",
  house_id: "4",
  content: "リビングめっちゃ広い。合宿できそう"
)



# 5
  House.create!(
    name: "Railsゲストハウス",
    postcode: "5555555",
    prefecture_code: "20",
    address: '中原郡大谷町',
    domitory_price: '3500',
    private_price: '4800',
    copy: 'プログラミング宿',
    introduction: "初学者、現役問わずプログラミングを愛する者が集まる宿です。高速WiFi完備",
    is_valid: "1",
    house_area_id: "6",
    house_image: open("#{Rails.root}/db/fixtures/house/sh01.jpg"),
  )

  HouseCategory.create!(
    house_id: "5",
    category_id: "1"
  )
  
  HouseCategory.create!(
    house_id: "5",
    category_id: "3"
  )
  
  HouseCategory.create!(
    house_id: "5",
    category_id: "7"
  )
  
  HouseCategory.create!(
    house_id: '5',
    category_id: '15'
  )

  50.times do |n|
    HouseComment.create!(
      user_id: rand(8..50),
      house_id: "5",
      content: "とってもいい宿なんですよーーーー！！！"
    )
    end

# 6
House.create!(
  name: 'マラソンゲストハウス',
  postcode: '6666666',
  prefecture_code: '4',
  address: '長距離市陸上273-3',
  domitory_price: '3500',
  private_price: '15000',
  copy: 'マラソン宿',
  introduction: "マラソンを愛する者が集まる宿です。毎月第２土曜日にセルフ箱根駅伝開催中！
  酸素ルーム完備のランナーに優しいお宿",
  is_valid: '1',
  house_area_id: '2',
  house_image: open("#{Rails.root}/db/fixtures/house/sh02.jpg"),
  # images: open("#{Rails.root}/db/fixtures/house/sh02.jpg"),
)

HouseCategory.create!(
  house_id: '6',
  category_id: '2'
)

HouseCategory.create!(
  house_id: '6',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '6',
  category_id: '7'
)

HouseCategory.create!(
  house_id: '6',
  category_id: '9'
)

# 7
House.create!(
  name: '北海道はでっかい堂',
  postcode: '7777777',
  prefecture_code: '1',
  address: '札幌市ブラックニッカビル4階',
  domitory_price: '2500',
  private_price: '3900',
  copy: '北海道におかえりなさい〜！！',
  introduction: "北海道のみんなの実家としてみなさんの旅のお手伝いをしています。
  くつろいで行ってくださいね！
  夜はリビングに集まって炬燵でUNOをやりましょう！",
  is_valid: '1',
  house_area_id: '1',
  house_image: open("#{Rails.root}/db/fixtures/house/sh03.jpg"),
)

HouseCategory.create!(
  house_id: '7',
  category_id: '2'
)

HouseCategory.create!(
  house_id: '7',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '7',
  category_id: '7'
)

HouseCategory.create!(
  house_id: '7',
  category_id: '9'
)

# 8
House.create!(
  name: 'RAMEN HOUSE',
  postcode: '8888888',
  prefecture_code: '6',
  address: 'ラーメン市ラーメン部27-11',
  # domitory_price: '0',
  private_price: '3500',
  copy: 'ゲストハウス兼ラーメン屋さん',
  introduction: "カンボジア出身のご主人と、オーストラリア人の奥様が営むアットホームなゲストハウス兼ラーメン屋。
  ゲストとの出会いをとラーメンのスープのコクを大切にしている素敵なお宿",
  is_valid: '1',
  house_area_id: '3',
  house_image: open("#{Rails.root}/db/fixtures/house/sh04.jpg"),
)

HouseCategory.create!(
  house_id: '8',
  category_id: '4'
)

HouseCategory.create!(
  house_id: '8',
  category_id: '9'
)

HouseCategory.create!(
  house_id: '8',
  category_id: '11'
)

HouseCategory.create!(
  house_id: '8',
  category_id: '14'
)

# 9
House.create!(
  name: 'ゲストハウス まごのて',
  postcode: '9999999',
  prefecture_code: '15',
  address: '新潟市新潟町2-84',
  domitory_price: '2500',
  private_price: '7200',
  copy: '新潟のちいさな家',
  introduction: "ゲストさんのかゆいところに手が届く宿を目指しています。
  ムヒ片手にお待ちしています。",
  is_valid: '1',
  house_area_id: '5',
  house_image: open("#{Rails.root}/db/fixtures/house/sh05.jpg"),
  # images: open("#{Rails.root}/db/fixtures/tau/tau_ryo1.jpg"),
          # open("#{Rails.root}/db/fixtures/tau/tau_ryo2.jpg"),
)

HouseCategory.create!(
  house_id: '9',
  category_id: '2'
)

HouseCategory.create!(
  house_id: '9',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '9',
  category_id: '7'
)

HouseCategory.create!(
  house_id: '9',
  category_id: '9'
)

# 10
House.create!(
  name: '唯我独尊',
  postcode: '1110000',
  prefecture_code: '46',
  address: '結郡土町孫浦1567',
  # domitory_price: '0',
  private_price: '2500',
  copy: '一人旅好きが自然と集まる山奥の有名宿',
  introduction: "人気の素泊まり宿。
  ホームページ等は持たず、予約はハガキのみという営業スタイルだが、オーナーさんの人柄と、チェックイン後の心地良い距離感からか全国にファンがいる知る人ぞ知る宿。",
  is_valid: '1',
  house_area_id: '11',
  house_image: open("#{Rails.root}/db/fixtures/house/sh06.jpg"),
)

HouseCategory.create!(
  house_id: '10',
  category_id: '1'
)

HouseCategory.create!(
  house_id: '10',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '10',
  category_id: '8'
)

HouseCategory.create!(
  house_id: '10',
  category_id: '11'
)

# 11
House.create!(
  name: '宝島ユースホステル',
  postcode: '0001111',
  prefecture_code: '35',
  address: '非公開',
  domitory_price: '3950',
  private_price: '5950',
  copy: '何もしない贅沢時間をここで！',
  introduction: "知る人ぞ知る絶海の孤島。定期便が出ておらず、海図にも載っていない世界的にも遠い島。
  訪れる人は少ないけれど、だからこそ本物の自然が残っています。さあ、冒険の旅に出かけよう",
  is_valid: '1',
  house_area_id: '9',
  house_image: open("#{Rails.root}/db/fixtures/house/sh07.jpg"),
)

HouseCategory.create!(
  house_id: '11',
  category_id: '1'
)

HouseCategory.create!(
  house_id: '11',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '11',
  category_id: '6'
)

HouseCategory.create!(
  house_id: '11',
  category_id: '9'
)

# 12
House.create!(
  name: '白浜ゲストハウス はまはま',
  postcode: '1112222',
  prefecture_code: '30',
  address: '夷隅郡御宿町新町608',
  domitory_price: '3300',
  private_price: '4300',
  copy: '大阪からすぐ来られる、だけども自然がいっぱい、誰もが心が解放される場所。',
  introduction: "約40年前にこだわり抜いて建てられた家屋を引き継ぎ、ゲストハウスを開きました。
  関西屈指の美しさを誇る白浜の海から徒歩5分、海水浴やサーフィンに最適。",
  is_valid: '1',
  house_area_id: '8',
  house_image: open("#{Rails.root}/db/fixtures/house/sh08.jpg"),
)

HouseCategory.create!(
  house_id: '12',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '12',
  category_id: '5'
)

HouseCategory.create!(
  house_id: '12',
  category_id: '9'
)

HouseCategory.create!(
  house_id: '12',
  category_id: '11'
)

# 13
House.create!(
  name: 'バックパッカーズ repo',
  postcode: '1113333',
  prefecture_code: '38',
  address: '宝町七目 5-2',
  domitory_price: '3500',
  private_price: '4500',
  copy: '世界を練り歩いたバックパッカーが地元に建てた夢の宿',
  introduction: "ゲストハウスの魅力に取り憑かれバックパッカーとして世界を旅した宝町出身のオーナーが、「いつか、ゲストハウスを、自分が生まれ育った宝町に作りたい！」という思いを形にした宿。
  旅人の気持ちがわかるオーナーだから作れる居心地の良い宿です",
  is_valid: '1',
  house_area_id: '10',
  house_image: open("#{Rails.root}/db/fixtures/house/sh09.jpg"),
)

HouseCategory.create!(
  house_id: '13',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '13',
  category_id: '5'
)

HouseCategory.create!(
  house_id: '13',
  category_id: '10'
)

HouseCategory.create!(
  house_id: '13',
  category_id: '11'
)

# 14
House.create!(
  name: 'ゲストハウス ばあちゃん家',
  postcode: '1114444',
  prefecture_code: '22',
  address: '俺市俺区西8丁目',
  domitory_price: '2500',
  # private_price: '0',
  copy: '忘れられない旅をしよう',
  introduction: "田舎のおばあの家に来たようなアットホームな空気感が自慢の宿です。
  ホテルや旅館では味わえない、忘れられない出会いが待っています。",
  is_valid: '1',
  house_area_id: '7',
  house_image: open("#{Rails.root}/db/fixtures/house/sh10.jpg"),
)

HouseCategory.create!(
  house_id: '14',
  category_id: '2'
)

HouseCategory.create!(
  house_id: '14',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '14',
  category_id: '7'
)

HouseCategory.create!(
  house_id: '14',
  category_id: '13'
)

# 15
House.create!(
  name: 'ハウス N',
  postcode: '1115555',
  prefecture_code: '42',
  address: '山郡竹町波5',
  # domitory_price: '0',
  private_price: '2800',
  copy: 'ここだけにある素敵な出会い',
  introduction: '本州最西端の有人島にあるハウスN。
  どこか懐かしさを感じるその佇まいは夏休みに田舎のおばあちゃんの家に帰ってきた時の感覚を思い出させます。
  広々とした庭に置かれた大きなテーブルを囲んであなたも”ゆんたく（おしゃべり）”を楽しみませんか？',
  is_valid: '1',
  house_area_id: '11',
  house_image: open("#{Rails.root}/db/fixtures/house/sh11.jpg"),
)

HouseCategory.create!(
  house_id: '15',
  category_id: '1'
)

HouseCategory.create!(
  house_id: '15',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '15',
  category_id: '10'
)

HouseCategory.create!(
  house_id: '15',
  category_id: '11'
)

# 16
House.create!(
  name: '鶴時間',
  postcode: '1116666',
  prefecture_code: '14',
  address: '鎌倉市歌舞伎座３ー１',
  domitory_price: '3200',
  private_price: '9000',
  copy: '鎌倉の暮らしを体験する宿',
  introduction: '宮大工によって建てられた築100年の歴史を持つ古民家をゲストハウスに改装。鎌倉を暮らすように旅していってください。',
  is_valid: '1',
  house_area_id: '4',
  house_image: open("#{Rails.root}/db/fixtures/house/sh12.jpg"),
)

HouseCategory.create!(
  house_id: '16',
  category_id: '2'
)

HouseCategory.create!(
  house_id: '16',
  category_id: '4'
)

HouseCategory.create!(
  house_id: '16',
  category_id: '10'
)

HouseCategory.create!(
  house_id: '16',
  category_id: '13'
)

#ブックマーク

4.times do |n|
  Bookmark.create!(
    user_id: "3",
    house_id: "#{n+1}",
  )
  end
  
  3.times do |n|
    Bookmark.create!(
      user_id: "4",
      house_id: "#{n+2}",
    )
  end
  
  2.times do |n|
    Bookmark.create!(
      user_id: "5",
      house_id: "#{n+3}",
    )
  end
  
  Bookmark.create!(
    user_id: "6",
    house_id: "7",
  )
  
  
  2.times do |n|
    Bookmark.create!(
      user_id: "7",
      house_id: "#{n+5}",
    )
  end
  
  #行きたいリスト
  
  4.times do |n|
  ToGoList.create!(
    user_id: "5",
    house_id: "#{n+1}",
  )
  end
    
  3.times do |n|
    ToGoList.create!(
      user_id: "4",
      house_id: "#{n+2}",
    )
  end
    
  2.times do |n|
    ToGoList.create!(
      user_id: "7",
      house_id: "#{n+3}",
    )
  end
    
  ToGoList.create!(
    user_id: "6",
    house_id: "7",
  )
    
    
  2.times do |n|
    ToGoList.create!(
      user_id: "3",
      house_id: "#{n+5}",
    )
  end

#ルーム

6.times do |n|
  Room.create!(
  )
end

#エントリー

Entry.create!(
  user_id: "3",
  room_id: "1",
)

Entry.create!(
  user_id: "4",
  room_id: "1",
)

Entry.create!(
  user_id: "3",
  room_id: "2",
)

Entry.create!(
  user_id: "5",
  room_id: "2",
)

Entry.create!(
  user_id: "3",
  room_id: "3",
)

Entry.create!(
  user_id: "6",
  room_id: "3",
)

Entry.create!(
  user_id: "3",
  room_id: "4",
)

Entry.create!(
  user_id: "7",
  room_id: "4",
)

Entry.create!(
  user_id: "4",
  room_id: "5",
)

Entry.create!(
  user_id: "5",
  room_id: "5",
)

Entry.create!(
  user_id: "4",
  room_id: "6",
)

Entry.create!(
  user_id: "6",
  room_id: "6",
)

#メッセージ

50.times do |n|
  Message.create!(
    user_id: "3",
    room_id: "1",
    content: "これは#{n+1}番目のメッセージ",
  )
  end
  
  Message.create!(
    user_id: "3",
    room_id: "2",
    content: "ハヤトは小学５年生。
    中肉中背の、あまり目立たない男の子だ。
    サッカー部に入っているが、レギュラーメンバーは
    クラブチームに入っているエリートばかり。
    走るのが遅く地味なプレーが多いハヤトは
    いつも補欠で、応援席を暖めている。",
  )
  
  Message.create!(
    user_id: "5",
    room_id: "2",
    content: "ある大手の美容室検索サイトでは
    失恋したてで、これからの自分を変えたくて
    ヘアカットがしたくなった時だけ現れる
    「失恋女子限定～カウンセリング付～」
    というバナーがある。",
  )
  
  Message.create!(
    user_id: "3",
    room_id: "3",
    content: "そのバナーで予約できる時間は２２時のみ。
    通常営業の終わった美容室は
    失恋女子だけのために
    貸し切りでオープンする。",
  )
  
  Message.create!(
    user_id: "6",
    room_id: "3",
    content: "夜２２時、今夜も
    ヘアカットで自分探しがしたい失恋女子へ
    美容室の扉が開く。",
  )
  
  Message.create!(
    user_id: "3",
    room_id: "4",
    content: "こんにちは、よろしくお願いします、ゲストハウスが好きです
    でも象さんはもっと好きです、アリさんマークの引越し社
    隣の客はなんとやら",
  )
  
  Message.create!(
    user_id: "7",
    room_id: "4",
    content: "運動会が近いある日、サッカー部顧問の先生から
    部活動対抗リレーについての話が出る。",
  )
  
  Message.create!(
    user_id: "4",
    room_id: "5",
    content: "従順なイメージの黒ボブを
    明るいふわふわ髪に。",
  )
  
  Message.create!(
    user_id: "5",
    room_id: "5",
    content: "「ネットで頼めばいい」
    ネットなら、飽きるまでスイーツを選べる。",
  )
  
  Message.create!(
    user_id: "4",
    room_id: "6",
    content: "執筆作業のルーティンワークは
    「終盤のクライマックスは、甘いものを食べながら仕上げる」
    というもの。",
  )
  
  Message.create!(
    user_id: "6",
    room_id: "6",
    content: "優しくて頼りがいのある先輩、
    サッカーがうまいことを鼻に掛けないクラブチーム所属組や
    小生意気ながらも可愛らしい後輩たちと一緒に
    ハヤトは上達が遅いながらも、楽しく部活に参加していた。",
  )

#ストーリー

# 1
Story.create!(
  user_id: '3',
  house_id: '1',
  title: "大自然に囲まれた賑やか宿で過ごす贅沢時間",
  content: "２０１８年の冬、僕は唐突に思いました、「最近、旅してなくね！？」と、
  もともと一人旅やゲストハウスは好きなのですが、、、ここ最近は友人や恋人と、っていうことが多くて近頃は泊まる機会がありませんでした。
  ただ、今年の冬は年末年始が忙しくて、年末直前が長期休みというなかなか他の人達とは合わせづらいスケジュール、、、
  ということで！いっちゃいました、初沖縄！！
  基本的にはかなりチキンの性格なので、情報収集は念入りに、、、どーもこの「なきじんゲストハウス結家」ってとこが良さそうだぞ、ってことでおそるおそる予約をしましたが、いやー本当にこの時の自分の選択を褒めてあげたい！
  もう最高ポイント多過ぎて紹介仕切れないんですが、特にここがってとこをこれから紹介していきますね！
  
  １・宿に集まる方々のクセが強い！（いい意味で）
  はじめてのゲストハウス、結構ドキドキしながらいったんですよ。雰囲気とかよくわからんし、本当に旅人同士仲良くなるとか、あるの？都市伝説でしょ？みたいな。
  でも、結家に関してはそのs心配はないっていうか、むしろ声枯れるまで話すことになるのでそっちの心配した方がいいっす。
  まず、この結家では毎晩８時から「おかず交換会」をやっていて簡単にいうと一人一品おかずを持ち寄ってみんなでご飯食べようね、っていう会なのです。
  めっちゃいいですよこのシステム！まずキッチンで料理してると自然とコミュニケーションうまれますし、やっぱ同じテーブル囲んでご飯食べると一気に距離が近づきます！
  そして何より、女将の「結ねぇ」の場を回すスキルが高すぎる！「結ねぇ」はなんとこの宿を始める前はあの木下大サーカスでアクロバット芸人をやっていたそうで、めちゃくちゃ面白いんです！
  木下で培われたスキルなのかは分かりませんが、とにかく人を楽しませることに関して天才的なこの女将の仕切るおかず交換会はめっちゃ楽しい！滞在５日間中、１回くらいは外に食べに行こうかとも思ったんですが、結局皆勤賞でした笑
  そして、この「結ねぇ」の人柄に惹かれてなのか、集まる人々も個性的でフレンドリーで楽しい人が多いという印象！毎晩遅くまでみんなで飲んじゃって毎日寝不足でした笑

  ２・最高のロケーション
  この宿なんですけど、マジめっちゃ広いんですよね。駐車場はサッカーの公式戦できるんじゃね？くらいの広さだし、反対側の庭では総勢１０人くらいでバレーボールが楽しめました。しかもオーシャンビュー。
  そしてなんといっても目の前の海！地理的に結家の宿泊客しかこないだろうなっていう場所がビーチになっていて、めっちゃ綺麗！
  シュノーケリングを楽しむ人、岩場でアカペラしてる人、写真撮ってる人、なかにはサーフィンを楽しんでいる人もいました。ちなみに僕はビール飲んでました。
  綺麗なプライベートビーチを、この値段で楽しめる宿なんて、日本中探してもここにしかないんじゃないですかね？

  ３・設備も充実
  上の２つが特に結家を推せる大きな理由なんですが、内装とかも女将結ねぇのこだわりが感じられる素敵な宿ですし、ハンモックとか、大量の漫画とか、嬉しいポイントたくさんあるんでぜひ行ってみてください！

  ということで、なきじんゲストハウス結家へのストーリーを書かせていただきました！
  ここで出会った旅人さん達から他にもいろんな宿を教えてもらったので早くも次の休暇が待ち遠しい、、、
  ",
  visit_date: '2018-08-25',
  story_image: open("#{Rails.root}/db/fixtures/musubiya/zakimusubiya09.jpg")
)

StoryComment.create!(
  user_id: "7",
  story_id: "1",
  content: "結家やっぱいいですねー！
  私が行った時は今の場所ではなくて、宿の大きさも今よりは少し小さいのかな？なんだか懐かしくなっちゃいました"
)

StoryComment.create!(
  user_id: "4",
  story_id: "1",
  content: "あ！ネコさん早速投稿してるー！
  今度来た時はビールばっか飲んでないで俺と一緒にサーフィンにもいきましょうね笑"
)

StoryComment.create!(
  user_id: "5",
  story_id: "1",
  content: "ヘルパーの漱石です！
  気に入ってもらえて嬉しいです！自分もまだしばらく宿にいる予定なので、休み取れたらまた来てくださいね！"
)

10.times do |n|
StoryBookmark.create!(
  user_id: "#{n+4}",
  story_id: "1"
)
end

# 2
Story.create!(
  user_id: '4',
  house_id: '1',
  title: '私の個人主義',
  content: "あなたも一遍はなはだこの意味社という事のうちへいうあるまい。

  はたして昔が影響人ももっともそのお話したありまでを片づけばいでしょのは成就忘れですんて、こうにはついでですならなら。
  支が知れないのは正しく結果をはなはだうないませ。同時に木下さんに講演畸形こう活動を計らた根ある例外これか記憶にってお保留ないないたませが、
  その絶対は彼らか進み霧を云うが、大森さんの事に主義の己をまるでご意味と変っと私頭に肝尊重がなっようにともかくお発表からしましたが、
  たといもっとも成就が見るましてならたものに当てるうう。
  
  だからそうしてお進みに引込んのは全く公平とするなながら、その人真似には考えですとという当人に潰さているますませ。
  そのうち主義の後この底はそれごろが使いこなすありかと嘉納さんになさませで、国の当時だろというお相違うませですて、
  騒ぎの上を道に今日でもの茫然で晩するば来けれども、どうの事実に結びてある頃をたとい受けますませと聴いあり事でから、
  ないなませで全く大理由考えでしょはずんたた。だから常か非常か批評にしたて、場合中世間に耽りとみるで後が小反抗の事実で知っじべき。
  今には同時に着ば諦めたないですたくっと、はなはだようやく叱りて観念はそれほどむずかしかった事た。すなわちご所有に好まからはいるんものますて、
  他人には、ようやく私かなるて聴いれなかっでしょするれれたあると考えで、学校も見えといますなけれ。
  
  ついに必ずしもはいよいよ個人というならたて、私がは事実いっぱいまであなたのお意味はないする下さいでた。
  そこは依然としてお話しののにお附与は移ろてしまったですでんば、二一の甲にまだ申し上げたという吟味なけれて、またこのめの装束をいせから、
  私かを私の知人を注意と当るばならましのなけれたと尊重罹りと意味偽ら来るたた。がたにまた岩崎さんにすなわちいっそ見るうものうなです。
  嘉納さんはしっかり例外にしよて流行るですのないますた。
  
  （しかも釣からなろ以上うんますがですも解るなけれたて、）もう少し換えるた自己で、スコットの一つだけ知れてしとして、
  腹の講演は今の時でもなれ反しのをなるたで留学方云うとありんに対してお内容うのん。
  あなたは充分足で願うたように言い直すているです方たがしかしそれほど松山申申し込んあるた。ただ少々一行は新聞にありて、
  当時でよくなっなけれたと引き摺り込んて、長くないませてそれからご養成に上げるたます。
  ",
  visit_date: '2018-01-01',
  story_image: open("#{Rails.root}/db/fixtures/musubiya/zakimusubiya11.jpg")
)

StoryComment.create!(
  user_id: "3",
  story_id: "2",
  content: "木曾路はすべて山の中である。
  あるところは岨づたいに行く崖の道であり、あるところは数十間の深さに臨む木曾川の岸であり、あるところは山の尾をめぐる谷の入り口である。"
)

StoryComment.create!(
  user_id: "5",
  story_id: "2",
  content: "恥の多い生涯を送って来ました。自分には、人間の生活というものが、見当つかないのです。
  自分は東北の田舎に生れましたので、汽車をはじめて見たのは、よほど大きくなってからでした。"
)

StoryComment.create!(
  user_id: "6",
  story_id: "2",
  content: "掌の上で少し落ちついて書生の顔を見たのがいわゆる人間というものの見始であろう。
  この時妙なものだと思った感じが今でも残っている。"
)

10.times do |n|
  StoryBookmark.create!(
    user_id: "#{n+4}",
    story_id: "2"
  )
end

StoryBookmark.create!(
  user_id: "3",
  story_id: "2"
)

# 3
Story.create!(
  user_id: '5',
  house_id: '1',
  title: 'セロ弾きのゴーシュ',
  content: "楽長もゴーシュの遠慮子どもたちへ小太鼓に叩く耳たまし。ところが思わず勝手ないましというセロたませ。
  勝手ましないんましはないまたゴーシュの同じたちの限りをはどうしても正確たたが、こればかり巻へはいっれものうう。
  立っすぎこれもゴーシュによしましとはじめの金の舌がいを弾き第十狸屋の息に死んけれども行くでしん。しずかこそ夕方来て出しでしょ。

  譜も六せ工合のようで歩きながらだした。かっこうも窓巻たりいつをきって行っまし。
  中は扉をまだになって眼がけちのようをひきとトロメライを出ししいんとあとがすって切れた。",
  visit_date: '2016-12-12',
  story_image: open("#{Rails.root}/db/fixtures/musubiya/zakimusubiya05.jpg")
)

StoryComment.create!(
  user_id: "6",
  story_id: "3",
  content: "同級生の一人が冗談に、いくら威張っても、そこから飛び降りる事は出来まい。弱虫やーい。と囃したからである。"
)

StoryComment.create!(
  user_id: "7",
  story_id: "3",
  content: "つれづれなるまゝに、日暮らし、硯にむかひて、心にうつりゆくよしなし事を、そこはかとなく書きつくれば、あやしうこそものぐるほしけれ。"
)

StoryComment.create!(
  user_id: "4",
  story_id: "3",
  content: "後ろで大きな爆発音がした。俺は驚いて振り返った。"
)

10.times do |n|
  StoryBookmark.create!(
    user_id: "#{n+4}",
    story_id: "3"
  )
end

StoryBookmark.create!(
  user_id: "3",
  story_id: "3"
)


# 4以降
50.times do |n|
Story.create!(
  user_id: "#{n+8}",
  house_id: '5',
  title: "ストーリーのタイトルが入ります#{n+1}",
  content: "それは今日無論どんな指図帰りというののためを知れませだろ。
  もち前を担任者はどうにかこの学習ないなまでがなりてならだっをも発展来ですですながら、こうには考えますないないます。
  一種を抱いですのはもっと前にどうもあっうた。
  けっして大森さんで意味数少し附随がしや人間そんな申私か関係でというご安心んんないなくと、その次第は私か教師警視総監の気に入らて、
  嘉納さんの事が骨の私をかつてご意味と勤めばどこ社とお意見をあるように始めてご関係がするないないて、もっともけっして撲殺にやまましからいるうのに思いだた。もしくはしかしお自力からしのはそう嫌いと出るないで、そうした教場をもしですがという手の起りていましな。どんなところ思いのためその騒ぎは私上を食わせろんかと張さんとなっんた、人の今ないとして同関係でなくっないて、会の時で権力に十月までの示威を当時できるて過ぎから、少しの毎日にいうてその以上がついいたましとしたのないので、ないでたからこれからお支とどまるますのだですです。
  さて通りか好い加減か教育が行ったて、直接いっぱい春がしが来ないためにご評価の時間が思いんた。
  半分をは同時に気に入らと申し上げますたないずば、いよいよ同時にするて病気もそうなかっです点でし。",
  visit_date: '2015-10-01',
)
end

StoryBookmark.create!(
  user_id: "3",
  story_id: "4"
)

100.times do |n|
  StoryComment.create!(
    user_id: rand(8..50),
    story_id: rand(4..50),
    content: "すごいとてもいいお話しですね！私も行ってみたくなりました！とてもいいお話しですね！私も行ってみたくなりました！
    とてもいいお話しですね！私も行ってみたくなりました！とてもいいお話しですね！私も行ってみたくなりました！とてもいいお話しですね！私も行ってみたくなりました！
    とてもいいお話しですね！私も行ってみたくなりました！とてもいいお話しですね！私も行ってみたくなりました！"
  )
  end