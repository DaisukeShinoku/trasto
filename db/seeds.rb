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
  account_name: 'user2',
  display_name: 'ネコ太郎',
  email: '222@user.com',
  password: '222222',
  password_confirmation: '222222',
  introduction: "吾輩は猫である。名前はまだ無い。どこで生れたかとんと見当がつかぬ。
  何でも薄暗いじめじめした所でニャーニャー泣いていた事だけは記憶している。
  吾輩はここで始めて人間というものを見た。しかもあとで聞くとそれは書生という人間中で一番獰悪な種族であったそうだ。",
  avatar: open("#{Rails.root}/db/fixtures/user/user1.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 3
User.create!(
  account_name: 'user3',
  display_name: '坊っちゃん',
  email: '333@user.com',
  password: '333333',
  password_confirmation: '333333',
  introduction: "親譲りの無鉄砲で小供の時から損ばかりしている。
  小学校に居る時分学校の二階から飛び降りて一週間ほど腰を抜かした事がある。
  なぜそんな無闇をしたと聞く人があるかも知れぬ。別段深い理由でもない。",
  avatar: open("#{Rails.root}/db/fixtures/user/user2.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 4
User.create!(
  account_name: 'user4',
  display_name: '漱石くん',
  email: '4444@user.com',
  password: '444444',
  password_confirmation: '444444',
  introduction: "私はまあ煩悶のものにご学問は売っが得るたですうなけれて、二二の人が別段しだによって説明なて、
  だからこの英語の自信が抜いがらが、彼らかが何の職業を発展が叱ると来るたものならうと話しが意味云え行くますだ。
  文章にそれで槙君がそれでまだ引き離すしものましなかった。",
  avatar: open("#{Rails.root}/db/fixtures/user/user3.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 5
User.create!(
  account_name: 'user5',
  display_name: 'マルチタスク',
  email: '555@user.com',
  password: '555555',
  password_confirmation: '555555',
  introduction: "それを人間に当てはめて、同時並行的に複数の仕事をこなせる人を
  「マルチタスク型人間」なんて言うみたいですね。
  複数のプロジェクトを同時進行で進められるとか。",
  avatar: open("#{Rails.root}/db/fixtures/user/user4.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 6
User.create!(
  account_name: 'user6',
  display_name: '集中ちゃん',
  email: '666@user.com',
  password: '666666',
  password_confirmation: '666666',
  introduction: "一度に一つの事に集中しなさいとか、
  一番重要なことを最初にしなさいとか、
  管理する方法を考えるより、管理する対象を少なくする方がいいとか、
  言っている事はかなりクラシックです。",
  avatar: open("#{Rails.root}/db/fixtures/user/user5.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 7以降
50.times do |n|
User.create!(
  account_name: "mobu#{n+1}",
  display_name: "モブ太郎#{n+1}号",
  email: "example-#{n+1}@example.com",
  password: '111111',
  password_confirmation: '111111',
  introduction: "僕はモブキャラです。主役にはなれません。僕はモブキャラです。主役にはなれません。
  僕はモブキャラです。主役にはなれません。僕はモブキャラです。主役にはなれません。僕はモブキャラです。主役にはなれません。",
  activated: true,
  activated_at: Time.zone.now
)
end

#ツブヤキ

2.times do |n|
  Tweet.create!(
  user_id: rand(2..6),
  content: "「写真つきのツブヤキ」「写真つきのツブヤキ」「写真つきのツブヤキ」
  「写真つきのツブヤキ」「写真つきのツブヤキ」「写真つきのツブヤキ」
  「写真つきのツブヤキ」「写真つきのツブヤキ」「写真つきのツブヤキ」",
  tweet_picture: open("#{Rails.root}/db/fixtures/free/free#{rand(1..11)}.jpg")
  )
end

15.times do |n|
  Tweet.create!(
  user_id: rand(2..6),
  content: "「つぶやきます」「つぶやきます」「つぶやきます」「つぶやきます」「つぶやきます」
  「つぶやきます」「つぶやきます」「つぶやきます」「つぶやきます」",
  )
end

3.times do |n|
  Tweet.create!(
  user_id: rand(2..6),
  content: "「写真つきのツブヤキ」「写真つきのツブヤキ」「写真つきのツブヤキ」
  「写真つきのツブヤキ」「写真つきのツブヤキ」「写真つきのツブヤキ」
  「写真つきのツブヤキ」「写真つきのツブヤキ」「写真つきのツブヤキ」",
  tweet_picture: open("#{Rails.root}/db/fixtures/free/free#{rand(1..11)}.jpg")
  )
end

30.times do |n|
  Tweet.create!(
  user_id: rand(2..6),
  content: "「つぶやきます」「つぶやきます」「つぶやきます」「つぶやきます」「つぶやきます」
  「つぶやきます」「つぶやきます」「つぶやきます」「つぶやきます」",
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


# 5
House.create!(
  name: 'マスヤゲストハウス',
  postcode: '3930062',
  prefecture_code: '20',
  address: '諏訪郡下諏訪町平沢町314',
  domitory_price: '3200',
  private_price: '5000',
  copy: '旅人からも地元からも愛される暖かいゲストハウス',
  introduction: "マスヤゲストハウスは、長野県は諏訪湖のほとり下諏訪町にあるゲストハウス。
  赤煉瓦の続くかっこいい門構えのこの宿は、明治時代の古地図にも載っている老舗の旅館でした。
  「ますや旅館」の屋号を受け継ぎ、元々ある良いところを残しつつ、３ヶ月の改装を経て完成したマスヤゲストハウス。
  地元の方やスタッフと一緒に、のんびり楽しく、宿と諏訪での時間をお過ごしください。",
  is_valid: '1',
  house_area_id: '6',
  house_image: open("#{Rails.root}/db/fixtures/masuya/mgkana6.jpg"),
  # images: open("#{Rails.root}/db/fixtures/masuya/mgkana1.jpg"),
          # open("#{Rails.root}/db/fixtures/masuya/mgkana4.jpg"),
          # open("#{Rails.root}/db/fixtures/masuya/mgkana5.jpg"),
          # open("#{Rails.root}/db/fixtures/masuya/mgkana2.jpg")
)

HouseCategory.create!(
  house_id: '5',
  category_id: '1'
)

HouseCategory.create!(
  house_id: '5',
  category_id: '3'
)

HouseCategory.create!(
  house_id: '5',
  category_id: '7'
)

HouseCategory.create!(
  house_id: '5',
  category_id: '15'
)

# 6
House.create!(
  name: '鎌倉ゲストハウス',
  postcode: '2480022',
  prefecture_code: '14',
  address: '鎌倉市常盤273-3',
  domitory_price: '3500',
  private_price: '15000',
  copy: '囲炉裏のある小さなお宿',
  introduction: "湘南よりも山のほう 大仏さまのずっと奥に、あかり灯る一軒家 大きな囲炉裏と、家を守る大きな柱 宮大工により造られた、あたたかな木のおうち 畳のにおい、陽だまり縁側 どこか懐かしい、おばあちゃん家のような ここに流れるのは、きっとこころから安らぐ時間 どうぞゆるりお過ごしください",
  is_valid: '1',
  house_area_id: '4',
  house_image: open("#{Rails.root}/db/fixtures/kamagesu/kamagesukana1.jpg"),
  # images: open("#{Rails.root}/db/fixtures/kamagesu/kamagesukana2.jpg"),
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
  name: '島宿 月桃屋',
  postcode: '9070013',
  prefecture_code: '47',
  address: '石垣市浜崎町2−3−24 エメラルドアイル浜崎町1F南',
  domitory_price: '2500',
  private_price: '3900',
  copy: '月桃家におかえりなさい〜！！',
  introduction: "沖縄那覇からさらにさらに南の石垣島にてとしてみなさんの旅のお手伝いをしています。
  食事の提供はありませんが毎日自炊や石垣牛や島料理の美味しいお店に食べることも。
  夜はリビングに集まってみんなとゆんたく(おしゃべり)！自分のおうちのようにゆっくりやすんで友達作っていい思い出たくさん作ってまた帰ってきてね〜。",
  is_valid: '1',
  house_area_id: '12',
  house_image: open("#{Rails.root}/db/fixtures/gettouya/daigettouya.jpg"),
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
  name: 'eat&stay ROMEY',
  postcode: '4210123',
  prefecture_code: '22',
  address: '静岡市駿河区石部27-11',
  # domitory_price: '0',
  private_price: '3500',
  copy: 'ゲストハウス兼カレー屋さん',
  introduction: "ネパール出身のご主人と、日本人の奥様が二人三脚で営むアットホームなゲストハウス兼カレー屋さん。
  ゲストとの一期一会の出会いを大切にしている素敵なお宿",
  is_valid: '1',
  house_area_id: '7',
  house_image: open("#{Rails.root}/db/fixtures/romey/dairomey.jpg"),
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
  name: '飛騨高山ゲストハウス tau',
  postcode: '5060031',
  prefecture_code: '21',
  address: '高山市西之一色町2-84',
  domitory_price: '2500',
  private_price: '7200',
  copy: '飛騨高山のちいさな家',
  introduction: "「ｔａｕ」とは広島の方言で手が届きますか？の意味です。
  ゲストさんの想い、目標や夢に手が届く宿を目指しています。
  訪れるすべてのゲストさんの笑顔を願い、皆様のお越しを心からお待ちしております。",
  is_valid: '1',
  house_area_id: '7',
  house_image: open("#{Rails.root}/db/fixtures/tau/tau_ryo3.jpg"),
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
  name: '晴耕雨読',
  postcode: '8914205',
  prefecture_code: '46',
  address: '熊毛郡屋久島町宮之浦1567',
  # domitory_price: '0',
  private_price: '2500',
  copy: '一人旅好きが自然と集まる屋久島の有名宿',
  introduction: "屋久島で人気の素泊まり宿。
  ホームページ等は持たず、予約は電話のみという営業スタイルだが、オーナーさんの人柄と、チェックイン後の心地良い距離感からか全国にファンがいる知る人ぞ知る宿。",
  is_valid: '1',
  house_area_id: '11',
  house_image: open("#{Rails.root}/db/fixtures/seikouudoku/daiseikoudoku.jpg"),
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
  name: '小笠原ユースホステル',
  postcode: '1002101',
  prefecture_code: '13',
  address: '小笠原村父島字西町',
  domitory_price: '3950',
  private_price: '5950',
  copy: '東京から丸一日、１週間以上のフリータイムを手に入れて向かう贅沢時間をここで！',
  introduction: "東京から南へ1,000Kmの絶海の孤島。
  月に5便ほど、25時間半もかかる定期船でしか行かれない、世界的にも遠い島。訪れる人は少ないけれど、だからこそ本物の自然が残っています。
  海ではダイビングはもちろん、ドルフィンスイムやホエールウォッチング、スキンダイブに島巡りボート。
  山はトレッキングに数々の展望台。1便やりすごして8~9泊してもやることいっぱい。",
  is_valid: '1',
  house_area_id: '4',
  house_image: open("#{Rails.root}/db/fixtures/free/free1.jpg"),
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
  name: '御宿ゲストハウス 海おやぶん',
  postcode: '2995103',
  prefecture_code: '12',
  address: '夷隅郡御宿町新町608',
  domitory_price: '3300',
  private_price: '4300',
  copy: '都心からすぐ来られる房総に、誰もがくつろげる場所を。',
  introduction: "約40年前にこだわり抜いて建てられた家屋を引き継ぎ、ゲストハウスを開きました。
  関東屈指の美しさを誇る御宿の海から徒歩5分、駅から徒歩8分、スーパーから徒歩2分の御宿中心街にひっそりと佇んでいます。
  帰ってきたらすぐに浴びられる外シャワーがあるので、海水浴やサーフィンも快適。ツーリングなどの拠点にもご利用ください。皆様のお越しを心よりお待ちしております",
  is_valid: '1',
  house_area_id: '4',
  house_image: open("#{Rails.root}/db/fixtures/free/free2.jpg"),
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
  name: '五島バックパッカーズ ぽれ',
  postcode: '8574214',
  prefecture_code: '42',
  address: '新上五島町七目郷 1005-2',
  domitory_price: '3500',
  private_price: '4500',
  copy: '世界を練り歩いたバックパッカーが地元に建てた夢の宿',
  introduction: "ゲストハウスの魅力に取り憑かれバックパッカーとして世界を旅した五島出身のオーナーが、「いつか、ゲストハウスを、自分が生まれ育った島に作りたい！」という思いを形にした宿。
  旅人の気持ちがわかるオーナーだから作れる居心地の良い宿です",
  is_valid: '1',
  house_area_id: '12',
  house_image: open("#{Rails.root}/db/fixtures/free/free3.jpg"),
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
  name: 'さっぽろゲストハウス 縁家',
  postcode: '0640808',
  prefecture_code: '1',
  address: '札幌市中央区南8条西8丁目515 南八条アーバンライフ201号室',
  domitory_price: '2500',
  # private_price: '0',
  copy: '暮らすように旅しよう',
  introduction: "縁家は10階建ての大きなマンションの一室にあります。
  初めてお越しになるゲストさんは『こんな所にゲストハウスが！？』と驚きますが、縁家の重い扉を開けた瞬間に、その緊張はどこかへと吹っ飛ぶことでしょう。
  中に入れば、北の大地とは思えないユルい雰囲気と居心地の良さ。まるでホームステイに来たようなアットホームな空気感が自慢の宿です。
  ホテルや旅館では味わえない、素敵な一期一会の出会いが待っています。",
  is_valid: '1',
  house_area_id: '1',
  house_image: open("#{Rails.root}/db/fixtures/free/free4.jpg"),
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
  name: 'ゲストハウス Nami',
  postcode: '9071751',
  prefecture_code: '47',
  address: '八重山郡竹富町波照間5251',
  # domitory_price: '0',
  private_price: '2800',
  copy: '日本の最南端にある素敵な出会い',
  introduction: '日本最南端の有人島にあるゲストハウスNami。どこか懐かしさを感じるその佇まいは夏休みに田舎のおばあちゃんの家に帰ってきた時の感覚を思い出させます。広々とした庭に置かれた大きなテーブルを囲んであなたも”ゆんたく（おしゃべり）”を楽しみませんか？',
  is_valid: '1',
  house_area_id: '12',
  house_image: open("#{Rails.root}/db/fixtures/free/free5.jpg"),
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
  name: '亀時間',
  postcode: '248-0013',
  prefecture_code: '14',
  address: '鎌倉市材木座３丁目１７−２１',
  domitory_price: '3200',
  private_price: '9000',
  copy: '鎌倉の暮らしを亀時間で旅する宿',
  introduction: '鎌倉時代に港町として栄えた材木座に、宮大工によって建てられた築94年の歴史を持つ古民家をゲストハウスに改装しました。海まで徒歩3分、鎌倉の暮らしをゆっくりお楽しみください。',
  is_valid: '1',
  house_area_id: '4',
  house_image: open("#{Rails.root}/db/fixtures/free/free6.jpg"),
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
  user_id: "2",
  house_id: "#{n+1}",
)
end

3.times do |n|
  Bookmark.create!(
    user_id: "3",
    house_id: "#{n+2}",
  )
end

2.times do |n|
  Bookmark.create!(
    user_id: "4",
    house_id: "#{n+3}",
  )
end

Bookmark.create!(
  user_id: "5",
  house_id: "7",
)


2.times do |n|
  Bookmark.create!(
    user_id: "6",
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
    user_id: "2",
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
  user_id: "2",
  room_id: "1",
)

Entry.create!(
  user_id: "3",
  room_id: "1",
)

Entry.create!(
  user_id: "2",
  room_id: "2",
)

Entry.create!(
  user_id: "4",
  room_id: "2",
)

Entry.create!(
  user_id: "2",
  room_id: "3",
)

Entry.create!(
  user_id: "5",
  room_id: "3",
)

Entry.create!(
  user_id: "2",
  room_id: "4",
)

Entry.create!(
  user_id: "6",
  room_id: "4",
)

Entry.create!(
  user_id: "3",
  room_id: "5",
)

Entry.create!(
  user_id: "4",
  room_id: "5",
)

Entry.create!(
  user_id: "3",
  room_id: "6",
)

Entry.create!(
  user_id: "5",
  room_id: "6",
)

#メッセージ

50.times do |n|
Message.create!(
  user_id: "2",
  room_id: "1",
  content: "これは#{n+1}番目のメッセージ",
)
end

Message.create!(
  user_id: "2",
  room_id: "2",
  content: "こんにちは、よろしくお願いします、ゲストハウスが好きです
  でも象さんはもっと好きです、アリさんマークの引越し社
  隣の客はなんとやら",
)

Message.create!(
  user_id: "4",
  room_id: "2",
  content: "こんにちは、よろしくお願いします、ゲストハウスが好きです
  でも象さんはもっと好きです、アリさんマークの引越し社
  隣の客はなんとやら",
)

Message.create!(
  user_id: "2",
  room_id: "3",
  content: "こんにちは、よろしくお願いします、ゲストハウスが好きです
  でも象さんはもっと好きです、アリさんマークの引越し社
  隣の客はなんとやら",
)

Message.create!(
  user_id: "5",
  room_id: "3",
  content: "こんにちは、よろしくお願いします、ゲストハウスが好きです
  でも象さんはもっと好きです、アリさんマークの引越し社
  隣の客はなんとやら",
)

Message.create!(
  user_id: "2",
  room_id: "4",
  content: "こんにちは、よろしくお願いします、ゲストハウスが好きです
  でも象さんはもっと好きです、アリさんマークの引越し社
  隣の客はなんとやら",
)

Message.create!(
  user_id: "6",
  room_id: "4",
  content: "こんにちは、よろしくお願いします、ゲストハウスが好きです
  でも象さんはもっと好きです、アリさんマークの引越し社
  隣の客はなんとやら",
)

Message.create!(
  user_id: "3",
  room_id: "5",
  content: "こんにちは、よろしくお願いします、ゲストハウスが好きです
  でも象さんはもっと好きです、アリさんマークの引越し社
  隣の客はなんとやら",
)

Message.create!(
  user_id: "4",
  room_id: "5",
  content: "こんにちは、よろしくお願いします、ゲストハウスが好きです
  でも象さんはもっと好きです、アリさんマークの引越し社
  隣の客はなんとやら",
)

Message.create!(
  user_id: "3",
  room_id: "6",
  content: "こんにちは、よろしくお願いします、ゲストハウスが好きです
  でも象さんはもっと好きです、アリさんマークの引越し社
  隣の客はなんとやら",
)

Message.create!(
  user_id: "5",
  room_id: "6",
  content: "こんにちは、よろしくお願いします、ゲストハウスが好きです
  でも象さんはもっと好きです、アリさんマークの引越し社
  隣の客はなんとやら",
)

#ストーリー

Story.create!(
  user_id: '2',
  house_id: '1',
  title: 'タイトルが入りますタイトルが入りますタイトル２５字',
  content: '！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！
  ！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字
  ！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文
  字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３００
  ０文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３
  ０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入りま
  す３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入
  ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテン
  ツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字
  ！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３００
  ０文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります
  ３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが
  入ります',
  visit_date: '2011-11-14',
  story_image: open("#{Rails.root}/db/fixtures/musubiya/zakimusubiya09.jpg")
)

50.times do |n|
StoryComment.create!(
  user_id: "#{n+1}",
  story_id: "1",
  content: "すごいとてもいいお話しですね！私も行ってみたくなりました！とてもいいお話しですね！私も行ってみたくなりました！
  とてもいいお話しですね！私も行ってみたくなりました！とてもいいお話しですね！私も行ってみたくなりました！とてもいいお話しですね！私も行ってみたくなりました！
  とてもいいお話しですね！私も行ってみたくなりました！とてもいいお話しですね！私も行ってみたくなりました！"
)
end



Story.create!(
  user_id: '3',
  house_id: '1',
  title: 'タイトルが入りますタイトルが入りますタイトル２５字',
  content: "「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「ここでめっちゃ改行するよ！」




  「どうなったかな？？」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あ",
  visit_date: '2018-01-01',
  story_image: open("#{Rails.root}/db/fixtures/musubiya/zakimusubiya11.jpg")
)

Story.create!(
  user_id: '4',
  house_id: '1',
  title: 'タイトルが入りますタイトルが入りますタイトル２５字',
  content: "「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「ここでめっちゃ改行するよ！」




  「どうなったかな？？」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あ",
  visit_date: '2016-12-12',
  story_image: open("#{Rails.root}/db/fixtures/musubiya/zakimusubiya05.jpg")
)

Story.create!(
  user_id: '5',
  house_id: '1',
  title: 'タイトルが入りますタイトルが入りま２０字',
  content: "「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「ここでめっちゃ改行するよ！」




  「どうなったかな？？」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あ",
  visit_date: '2015-10-01',
  story_image: open("#{Rails.root}/db/fixtures/musubiya/zakimusubiya09.jpg")
)

Story.create!(
  user_id: '6',
  house_id: '1',
  title: 'タイトルが入りますタイトルが入りま２０字',
  content: "「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  
  
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  
  
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」",
  visit_date: '2020-017-01',
  story_image: open("#{Rails.root}/db/fixtures/musubiya/musubiya-moai7.jpg")
)

Story.create!(
  user_id: '2',
  house_id: '2',
  title: 'タイトルが入りますタイトルが入りますタイトル２５字',
  content: '！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！
  ！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字
  ！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文
  字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３００
  ０文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３
  ０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入りま
  す３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入
  ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテン
  ツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字
  ！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３００
  ０文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります
  ３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが
  入ります',
  visit_date: '2011-11-14',
  story_image: open("#{Rails.root}/db/fixtures/masuya/mgkana1.jpg")
)

Story.create!(
  user_id: '3',
  house_id: '2',
  title: 'タイトルが入りますタイトルが入りま２０字',
  content: "「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「ここでめっちゃ改行するよ！」




  「どうなったかな？？」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あ",
  visit_date: '2018-01-01',
  story_image: open("#{Rails.root}/db/fixtures/masuya/mgkana2.jpg")
)

Story.create!(
  user_id: '4',
  house_id: '2',
  title: 'タイトルが入りますタイトルが入りま２０字',
  content: "「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「ここでめっちゃ改行するよ！」




  「どうなったかな？？」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あ",
  visit_date: '2016-12-12',
  story_image: open("#{Rails.root}/db/fixtures/masuya/mgkana3.jpg")
)

Story.create!(
  user_id: '5',
  house_id: '2',
  title: 'タイトルが入りますタイトルが入りま２０字',
  content: "「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「ここでめっちゃ改行するよ！」




  「どうなったかな？？」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あ",
  visit_date: '2015-10-01',
  story_image: open("#{Rails.root}/db/fixtures/masuya/mgkana4.jpg")
)

Story.create!(
  user_id: '6',
  house_id: '2',
  title: 'タイトルが入りますタイトルが入りま２０字',
  content: "「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  
  
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  
  
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」",
  visit_date: '2020-017-01',
  story_image: open("#{Rails.root}/db/fixtures/masuya/mgkana5.jpg")
)

Story.create!(
  user_id: '4',
  house_id: '3',
  title: 'タイトルが入りますタイトルが入りますタイトル２５字',
  content: '！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！
  ！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字
  ！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文
  字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３００
  ０文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３
  ０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入りま
  す３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入
  ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテン
  ツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字
  ！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３００
  ０文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります
  ３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが
  入ります',
  visit_date: '2011-11-14',
  story_image: open("#{Rails.root}/db/fixtures/free/free7.jpg")
)

Story.create!(
  user_id: '2',
  house_id: '3',
  title: 'タイトルが入りますタイトルが入りま２０字',
  content: "「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「ここでめっちゃ改行するよ！」




  「どうなったかな？？」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あ",
  visit_date: '2018-01-01',
  story_image: open("#{Rails.root}/db/fixtures/free/free8.jpg")
)

Story.create!(
  user_id: '5',
  house_id: '3',
  title: 'タイトルが入りますタイトルが入りま２０字',
  content: "「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「ここでめっちゃ改行するよ！」




  「どうなったかな？？」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あ",
  visit_date: '2016-12-12',
  story_image: open("#{Rails.root}/db/fixtures/free/free9.jpg")
)

Story.create!(
  user_id: '3',
  house_id: '3',
  title: 'タイトルが入りますタイトルが入りま２０字',
  content: "「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「ここでめっちゃ改行するよ！」




  「どうなったかな？？」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あ",
  visit_date: '2015-10-01',
  story_image: open("#{Rails.root}/db/fixtures/free/free10.jpg")
)

Story.create!(
  user_id: '2',
  house_id: '3',
  title: 'タイトルが入りますタイトルが入りま２０字',
  content: "「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  
  
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  
  
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」",
  visit_date: '2020-017-01',
  story_image: open("#{Rails.root}/db/fixtures/free/free11.jpg")
)

Story.create!(
  user_id: '2',
  house_id: '1',
  title: 'タイトルが入りますタイトルが入りますタイトル２５字',
  content: '！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！
  コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！
  ！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字
  ！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文
  字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３００
  ０文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３
  ０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入りま
  す３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入
  ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテン
  ツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コ
  ンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字
  ！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３００
  ０文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります
  ３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが入ります３０００文字！！コンテンツが
  入ります',
  visit_date: '2011-11-14',
  story_image: open("#{Rails.root}/db/fixtures/musubiya/musubiya-moai2.jpg")
)

Story.create!(
  user_id: '3',
  house_id: '1',
  title: 'タイトルが入りますタイトルが入りま２０字',
  content: "「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「ここでめっちゃ改行するよ！」




  「どうなったかな？？」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あ",
  visit_date: '2018-01-01',
  story_image: open("#{Rails.root}/db/fixtures/musubiya/musubiya-moai6.jpg")
)

Story.create!(
  user_id: '4',
  house_id: '1',
  title: 'タイトルが入りますタイトルが入りま２０字',
  content: "「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「ここでめっちゃ改行するよ！」




  「どうなったかな？？」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あ",
  visit_date: '2016-12-12',
  story_image: open("#{Rails.root}/db/fixtures/musubiya/musubiya-moai4.jpg")
)

Story.create!(
  user_id: '5',
  house_id: '1',
  title: 'タイトルが入りますタイトルが入りま２０字',
  content: "「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「ここでめっちゃ改行するよ！」




  「どうなったかな？？」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」
  「コメントが入ります改行あり１０００文字」「コメントが入ります改行あり１０００文字」「コメントが入ります改行あ",
  visit_date: '2015-10-01',
  story_image: open("#{Rails.root}/db/fixtures/musubiya/musubikana9.jpg")
)

#ストーリーコメント

30.times do |n|
  Story.create!(
  user_id: rand(2..6),
  house_id: rand(1..14),
  title: 'タイトルが入りますタイトルが入りま２０字',
  content: "「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  
  
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  
  
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」
  「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」「メッッチャいい宿やねん」",
  visit_date: '2020-017-01',
)
end

100.times do |n|
StoryComment.create!(
  user_id: rand(2..6),
  story_id: rand(1..49),
  content: "すごいとてもいいお話しですね！私も行ってみたくなりました！とてもいいお話しですね！私も行ってみたくなりました！
  とてもいいお話しですね！私も行ってみたくなりました！とてもいいお話しですね！私も行ってみたくなりました！とてもいいお話しですね！私も行ってみたくなりました！
  とてもいいお話しですね！私も行ってみたくなりました！とてもいいお話しですね！私も行ってみたくなりました！"
)
end