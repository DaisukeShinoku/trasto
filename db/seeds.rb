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
  email: ENV['ADMIN_ADDRESS'],
  password: ENV['ADMIN_PASSWORD'],
  password_confirmation: ENV['ADMIN_PASSWORD'],
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
  guest: true,
  activated: true,
  activated_at: Time.zone.now
)

# 3
User.create!(
  account_name: 'nekotaro',
  display_name: 'ネコ太郎',
  email: '333@user.com',
  password: '333333',
  password_confirmation: '333333',
  introduction: "休学してインドに行ったらハマりすぎて気付いたら４年間たっていて、
  いつの間にか大学を除籍されていたというエピソード以外は特に変哲のない一般人です。
  ネコとカメラが好き。
  ",
  avatar: open("#{Rails.root}/db/fixtures/user/user01.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 4
User.create!(
  account_name: 'bottya',
  display_name: 'ボッチャ',
  email: '444@user.com',
  password: '444444',
  password_confirmation: '444444',
  introduction: "ゲストハウスが好きすぎて会社をやめてゲストハウスのスタッフをしながら日本全国を転々としています。
  いつかは絶対に自分のゲストハウスを開くぞ!!
  今は長野のRailsゲストハウスで雇われオーナーやってます、遊びに来てね!!",
  avatar: open("#{Rails.root}/db/fixtures/user/user02.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 5
User.create!(
  account_name: 'soseki0808',
  display_name: 'そうせき',
  email: '555@user.com',
  password: '555555',
  password_confirmation: '555555',
  introduction: "日本全国チャリンコで旅しながらyoutuberやってます、愛車はBianchi。
  目指せチャンネル登録1万人！！",
  avatar: open("#{Rails.root}/db/fixtures/user/user03.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 6
User.create!(
  account_name: 'momodwc',
  display_name: 'うめ',
  email: '666@user.com',
  password: '666666',
  password_confirmation: '666666',
  introduction: "写真をこよなく愛しています。圧倒的ニコン教信者。
  最近は、風景だけではなく人物写真にもハマっています。
  プロフィール画像はイメージです。",
  avatar: open("#{Rails.root}/db/fixtures/user/user04.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 7
User.create!(
  account_name: 'gios',
  display_name: 'ジオス',
  email: '777@user.com',
  password: '777777',
  password_confirmation: '777777',
  introduction: "大学生しつつ、長期休暇は絶対に旅に出る生活を続けて
  気付いたら大学８年生になってました。
  今年卒業できなかったら除籍、
  私vs国際経済学原論B、絶対に負けられない戦いがそこにはある",
  avatar: open("#{Rails.root}/db/fixtures/user/user05.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 8
User.create!(
  account_name: 'lovekimono',
  display_name: '着物らぶこ',
  email: '888@user.com',
  password: '888888',
  password_confirmation: '888888',
  introduction: "着物が好きすぎて私服が全部着物です、
  最近京都に移住しました。はんなりに馴染めなくて辛い、
  こうみえて空手は黒帯です、
  よろしくお願いします、",
  avatar: open("#{Rails.root}/db/fixtures/user/user06.jpg"),
  activated: true,
  activated_at: Time.zone.now
)


# 9
User.create!(
  account_name: 'weakalc',
  display_name: '酒弱男',
  email: '999@user.com',
  password: '999999',
  password_confirmation: '999999',
  introduction: "酒弱男(しゅじゃお)と読みます。
  カシオレのその先へ、、、",
  avatar: open("#{Rails.root}/db/fixtures/user/user07.jpg"),
  activated: true,
  activated_at: Time.zone.now
)


# 10
User.create!(
  account_name: 'kingneko',
  display_name: 'キングネコ',
  email: '1010@user.com',
  password: '101010',
  password_confirmation: '101010',
  introduction: "実家の旅館をリノベしてゲストハウスをオープンするため日々奮闘中。
  ５年間の大工経験を活かして一から作ってます。旅人と地元を繋ぐ場になれるようなゲストハウスにすることが目標です！",
  avatar: open("#{Rails.root}/db/fixtures/user/user08.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 11
User.create!(
  account_name: 'gamer',
  display_name: 'プロゲーマー翔',
  email: '0101@user.com',
  password: '010101',
  password_confirmation: '010101',
  introduction: "eスポーツを日本で有名にするために活動中。テトリス１０段。
  プロ選手としての活動の傍ら、eスポーツでプロを目指すための若者が集まるシェアハウスも経営。
  2020年8月現在、住民募集中です。詳しい話はDMで！",
  avatar: open("#{Rails.root}/db/fixtures/user/user09.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 12
User.create!(
  account_name: 'bomber',
  display_name: 'ボンバー山田',
  email: '1212@user.com',
  password: '121212',
  password_confirmation: '121212',
  introduction: "お笑い芸人のボンバー山田です。ゲストハウス大好き芸人です。",
  avatar: open("#{Rails.root}/db/fixtures/user/user10.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 13
User.create!(
  account_name: 'ranbo',
  display_name: 'ランボ',
  email: '1313@user.com',
  password: '131313',
  password_confirmation: '131313',
  introduction: "本当に美味しいごま油の研究のためアフリカに移住したアラサー",
  activated: true,
  activated_at: Time.zone.now
)

# 14
User.create!(
  account_name: 'pasios',
  display_name: 'パシオ',
  email: '1414@user.com',
  password: '141414',
  password_confirmation: '141414',
  introduction: "下衆都這臼大学4年/ラクロス部/スターバックスバイト/来年から消防官",
  activated: true,
  activated_at: Time.zone.now
)

# 15
User.create!(
  account_name: 'takara',
  display_name: 'グリーンタカラちゃん',
  email: '1515@user.com',
  password: '151515',
  password_confirmation: '151515',
  introduction: "2020年クリーンタカラ公式イメージガールのタカラです！
  クリーンタカラの美味しさを皆様に知っていただけるように精一杯頑張りますので応援よろしくお願い致します！",
  activated: true,
  activated_at: Time.zone.now
)

# 16
User.create!(
  account_name: 'faiten',
  display_name: 'ふぁいてん',
  email: '1616@user.com',
  password: '161616',
  password_confirmation: '161616',
  introduction: "んー,マンダム///",
  activated: true,
  activated_at: Time.zone.now
)

# 17
User.create!(
  account_name: 'isonic',
  display_name: 'あいこす',
  email: '1717@user.com',
  password: '171717',
  password_confirmation: '171717',
  introduction: "ゆるキャラ界の頂点を目指して毎日筋トレに励んでいます",
  avatar: open("#{Rails.root}/db/fixtures/user/user11.jpg"),
  activated: true,
  activated_at: Time.zone.now
)


# 18
User.create!(
  account_name: 'attou',
  display_name: 'あっとう',
  email: '1818@user.com',
  password: '181818',
  password_confirmation: '181818',
  introduction: "2020年M-1ファイナリストのいとこ、
  本人は予選落ちです",
  activated: true,
  activated_at: Time.zone.now
)

# 19
User.create!(
  account_name: 'pakurinakata',
  display_name: 'ヒデ',
  email: '1919@user.com',
  password: '191919',
  password_confirmation: '191919',
  introduction: "ヒデです、ポジションはキーパー以外ならどこでもやれます。
  ゲストハウス界のエースストライカーとして今日もLet'sプロテイン",
  activated: true,
  activated_at: Time.zone.now
)

#20
User.create!(
  account_name: 'mekoyagi',
  display_name: 'メーコ',
  email: '2020@user.com',
  password: '202020',
  password_confirmation: '202020',
  introduction: "沖縄の小さな離島でヤギと暮らしています。名前はメーコ。
  大人しくていい子です。",
  avatar: open("#{Rails.root}/db/fixtures/user/user12.jpg"),
  activated: true,
  activated_at: Time.zone.now
)

# 21
User.create!(
  account_name: 'annin',
  display_name: '杏仁スズキ',
  email: '2121@user.com',
  password: '212121',
  password_confirmation: '212121',
  introduction: "杏仁豆腐の魅力に取り憑かれ早６年、ついに店を構えるに至りました。
  北海道にお越しの際は是非日本最北端の杏仁豆腐屋、「杏仁スズキ」へ！",
  activated: true,
  activated_at: Time.zone.now
)

# リレーションシップ
users = User.all
user  = users.third
following = users[4..21]
followers = users[5..20]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

# ツイート

# 1

Tweet.create!(
  user_id: "17",
  content: "オリオンビール、ちょっと見ない間に新しい種類が増えてますねえ
  これは沖縄いくしかありませんねえ",
)

TweetComment.create!(
  user_id: "3",
  tweet_id: "1",
  content: "おともします！",
)

TweetComment.create!(
  user_id: "7",
  tweet_id: "1",
  content: "WATTAめっちゃ飲みたいです！関東だと全然売ってないんですよねーー",
)


# 2
Tweet.create!(
  user_id: "21",
  content: "旅の禁断症状が出ている",
)

TweetComment.create!(
  user_id: "20",
  tweet_id: "2",
  content: "同じく！",
)

# 3
Tweet.create!(
  user_id: "7",
  content: "群馬ツーリング旅。先ほど無事帰宅。
  お盆休み最後で、人がたくさんいましたー",
)

TweetComment.create!(
  user_id: "15",
  tweet_id: "3",
  content: "おかえりなさいーーーー！！今日の群馬めっちゃ暑かったんじゃないですか？？",
)

# 4
Tweet.create!(
  user_id: "4",
  content: "東南アジアにいる自分探ししてる留年した大学生のバックパッカー風のファッションに身を包んで銀座にいきます",
)

TweetComment.create!(
  user_id: "11",
  tweet_id: "4",
  content: "画像がなくても格好が目に浮かぶようだ選手権優勝",
)

TweetComment.create!(
  user_id: "7",
  tweet_id: "4",
  content: "勇者だなあ",
)

# 5
Tweet.create!(
  user_id: "6",
  content: "秋葉原の一角にオープンした、「柔道カフェ」にいってきました。
  給仕はもちろん柔道着姿のマッチョなお兄様方。
  靴を脱いで入店すると青臭い畳と、
  いちおしメニューの「寒稽古の後にふるまうお汁粉」の甘い香りが
  暖かく迎えてくれます。",
)

# 6
Tweet.create!(
  user_id: "3",
  content: "この美しさに匹敵する海、他にあります？（イキリ感）",
  tweet_picture: open("#{Rails.root}/db/fixtures/okinawa/beach.jpg")
)

TweetComment.create!(
  user_id: "8",
  tweet_id: "6",
  content: "え、やば！これどこの海ですかー？",
)

TweetComment.create!(
  user_id: "3",
  tweet_id: "6",
  content: "沖縄の波照間島というところです！石垣島からさらに船に乗っていく、
  日本最南端の有人島ですよー",
)

TweetComment.create!(
  user_id: "8",
  tweet_id: "6",
  content: "あ、噂には聞いていた、、、いってみたい！",
)

# 7
Tweet.create!(
  user_id: "8",
  content: "秋葉原の一角にオープンした、「柔道カフェ」にいってきました。
  給仕はもちろん柔道着姿のマッチョなお兄様方。
  靴を脱いで入店すると青臭い畳と、
  いちおしメニューの「寒稽古の後にふるまうお汁粉」の甘い香りが
  暖かく迎えてくれます。",
)

# 8
Tweet.create!(
  user_id: "3",
  content: "ゲストハウスの禁断症状が出ている",
)

TweetComment.create!(
  user_id: "4",
  tweet_id: "8",
  content: "きちゃいなよyou",
)

# 9
Tweet.create!(
  user_id: "9",
  content: "飛行機に乗り遅れる夢を見た、、、
  冷や汗eeeeeee",
)

# 10
Tweet.create!(
  user_id: "21",
  content: "スマホが普及してきて今の若者はあまり使わないのかもしれないけど、
  国内旅行に時刻表は必須だったよなあ。放浪してた１０代の時に使ってたボロボロの時刻表が押入れから出てきて感慨深い。
  おじさん泣いちゃうよ。",
)

# 11
Tweet.create!(
  user_id: "17",
  content: "北海道に行った人間が幸福になって帰ってくる、その謎を探るべく我々は北海道の大地へ足を踏み入れた、、、",
  tweet_picture: open("#{Rails.root}/db/fixtures/okinawa/ikura.jpg"),
)

TweetComment.create!(
  user_id: "21",
  tweet_id: "11",
  content: "巨大イクラに人類の原点をみた！",
)

TweetComment.create!(
  user_id: "13",
  tweet_id: "11",
  content: "その時、探検隊の前に現れたものとは！？",
)

# 12
Tweet.create!(
  user_id: "13",
  content: "おじい自慢のオリオンビールを歌いながら宮古島をドライブしてた先週に戻りたい。
  残業辛い。",
)

# 13
Tweet.create!(
  user_id: "11",
  content: "沖縄にはじめていくんですが、オススメのゲストハウスあるよーって人いますか？？",
)

TweetComment.create!(
  user_id: "13",
  tweet_id: "13",
  content: "北部であれば「なきじんゲストハウス結家」、中部であれば「ヤーグナの空」がオススメですよ",
)

TweetComment.create!(
  user_id: "11",
  tweet_id: "13",
  content: "ありがとうございます！結家には行ったことあるので、今回はヤーグナに行こうかな！",
)

# 14
Tweet.create!(
  user_id: "6",
  content: "秋葉原の一角にオープンした、「柔道カフェ」にいってきました。
  給仕はもちろん柔道着姿のマッチョなお兄様方。
  靴を脱いで入店すると青臭い畳と、
  いちおしメニューの「寒稽古の後にふるまうお汁粉」の甘い香りが
  暖かく迎えてくれます。",
)

# 15
Tweet.create!(
  user_id: "15",
  content: "GoPro欲しいぜえ",
)

# 16
Tweet.create!(
  user_id: "10",
  content: "これから日本１周する人たちに伝えたいこととしては、
  必要な装備はワークマンで全て揃うぞ、ってことです",
)

# 17
Tweet.create!(
  user_id: "20",
  content: "アニメの聖地巡礼旅行に行きたい。飛騨高山とかめっちゃ行きたい",
)

TweetComment.create!(
  user_id: "13",
  tweet_id: "17",
  content: "もしかして氷菓？",
)

# 18
Tweet.create!(
  user_id: "14",
  content: "熱中症には気をつけましょうーーー",
)

# 19
Tweet.create!(
  user_id: "21",
  content: "おはようございます
  土日の旅行の疲れが出てきた(笑)
  がんばっていかねば！",
)

# 20
Tweet.create!(
  user_id: "6",
  content: "秋葉原の一角にオープンした、「柔道カフェ」にいってきました。
  給仕はもちろん柔道着姿のマッチョなお兄様方。
  靴を脱いで入店すると青臭い畳と、
  いちおしメニューの「寒稽古の後にふるまうお汁粉」の甘い香りが
  暖かく迎えてくれます。",
)

# 21
Tweet.create!(
  user_id: "8",
  content: "一人旅の禁断症状が出ている",
)

TweetComment.create!(
  user_id: "16",
  tweet_id: "21",
  content: "自覚症状が出ている頃には相当進行しているのでいますぐ旅に出た方がいいですよ",
)

TweetComment.create!(
  user_id: "8",
  tweet_id: "21",
  content: "全てを投げ捨てて今からプーケットに高飛びしようかな",
)

# 22
Tweet.create!(
  user_id: "16",
  content: "マイクロツーリズムに新たな可能性を感じている今日、この頃。
  知らないだけで近くにいいところってたくさんあるんだよね",
)

# 23
Tweet.create!(
  user_id: "4",
  content: "沖縄は以外とお弁当文化が根付いていることはここだけの内緒ですよ",
)

# 24
Tweet.create!(
  user_id: "5",
  content: "初めて行ったゲストハウスで会った旅人たちの前でピグレッドの真似をしたら、
  それからずっとピグレッドとしか呼ばれなくて誰も名前を覚えてくれない。
  自己紹介やり直したい。",
)

TweetComment.create!(
  user_id: "9",
  tweet_id: "24",
  content: "もうずっとピグレッドでよくないですか？",
)

TweetComment.create!(
  user_id: "12",
  tweet_id: "24",
  content: "似合ってる似合ってる！",
)

# 25
Tweet.create!(
  user_id: "15",
  content: "秋葉原の一角にオープンした、「柔道カフェ」にいってきました。
  給仕はもちろん柔道着姿のマッチョなお兄様方。
  靴を脱いで入店すると青臭い畳と、
  いちおしメニューの「寒稽古の後にふるまうお汁粉」の甘い香りが
  暖かく迎えてくれます。",
)

# 26
Tweet.create!(
  user_id: "7",
  content: "Facebookにあげる写真って旅先で会った人たちと飲んだりしてる写真がほとんどなんだけど、
  久しぶりに会った友達には、怪しいMLMビジネスにハマっているんじゃないかと心配されていたようです",
)

# 27
Tweet.create!(
  user_id: "3",
  content: "温泉の禁断症状が出ている",
)

# 28
Tweet.create!(
  user_id: "16",
  content: "いつの間にかマイルめっちゃ溜まってマスヤん",
)

# 29
Tweet.create!(
  user_id: "18",
  content: "「大切なのは、自分のしたいことを自分で知ってるってことだよ」ムーミンって名言多いよね",
)

TweetComment.create!(
  user_id: "17",
  tweet_id: "29",
  content: "突然のスナフキン！",
)

# 30
Tweet.create!(
  user_id: "14",
  content: "ばらかもんを久しぶりに読んだからか、五島列島に行きたい欲求に脳がジャックされてます",
)

TweetComment.create!(
  user_id: "21",
  tweet_id: "30",
  content: "名作ですよねえ",
)


# 31
Tweet.create!(
  user_id: "6",
  content: "秋葉原の一角にオープンした、「柔道カフェ」にいってきました。
  給仕はもちろん柔道着姿のマッチョなお兄様方。
  靴を脱いで入店すると青臭い畳と、
  いちおしメニューの「寒稽古の後にふるまうお汁粉」の甘い香りが
  暖かく迎えてくれます。",
)

# 32
Tweet.create!(
  user_id: "12",
  content: "オリオンビール、ちょっと見ない間に新しい種類が増えてますねえ
  これは沖縄いくしかありませんねえ",
)

# 33
Tweet.create!(
  user_id: "6",
  content: "今年の年末年始は沖縄で過ごすことにした！！！",
)

# 34
Tweet.create!(
  user_id: "10",
  content: "旅先で地方のテレビで気象情報を見る時。
  知らない地域の名前がポンポン出てきて「ああ今、ここまで来てるんだよなあ」って最高にエモい瞬間なんだけど誰かわかってくれる人、いる？",
)

TweetComment.create!(
  user_id: "18",
  tweet_id: "34",
  content: "ぐうわかる",
)

# 35
Tweet.create!(
  user_id: "9",
  content: "スマホが普及してきて今の若者はあまり使わないのかもしれないけど、
  国内旅行に時刻表は必須だったよなあ。放浪してた１０代の時に使ってたボロボロの時刻表が押入れから出てきて感慨深い。
  おじさん泣いちゃうよ。",
)

# 36
Tweet.create!(
  user_id: "17",
  content: "屋久島に行った人間が幸福になって帰ってくる、その謎を探るべく我々は屋久島の奥地へ足を踏み入れた、、、",
)

# 37
Tweet.create!(
  user_id: "15",
  content: "おじい自慢のオリオンビールを歌いながら宮古島をドライブしてた先週に戻りたい。
  残業辛い。",
)

# 38
Tweet.create!(
  user_id: "14",
  content: "秩父にはじめていくんですが、オススメのゲストハウスあるよーって人いますか？？",
)

TweetComment.create!(
  user_id: "13",
  tweet_id: "38",
  content: "中心街からは外れますが、「おがのゲストハウス」オススメですよ！",
)

TweetComment.create!(
  user_id: "14",
  tweet_id: "38",
  content: "ありがとうございます！公式HPみましたけどめっちゃ良さそう！",
)

# 39
Tweet.create!(
  user_id: "4",
  content: "去年の今頃はここで三線の花歌ってたなー",
  tweet_picture: open("#{Rails.root}/db/fixtures/okinawa/ac3.jpg")
)

TweetComment.create!(
  user_id: "10",
  tweet_id: "39",
  content: "もう１年もたった？またボッチャの歌声が聞きたいよーー",
)

TweetComment.create!(
  user_id: "4",
  tweet_id: "39",
  content: "わー、コメントありがとうございます！
  今ちょっとバタバタしているのですが落ち着いたらまた行きたいです！",
)

# 40
Tweet.create!(
  user_id: "6",
  content: "四国ツーリング旅。先ほど無事帰宅。
  お盆休み最後で、人がたくさんいましたー",
)

# 41
Tweet.create!(
  user_id: "6",
  content: "Hey,Siri!!夏至の日に日本で一番早い日の出を見てから、
  日本で一番遅い日の入りを見るまでの最短ルートを教えて！",
)

TweetComment.create!(
  user_id: "4",
  tweet_id: "41",
  content: "なにその素敵な企画",
)

TweetComment.create!(
  user_id: "6",
  tweet_id: "41",
  content: "いいでしょ",
)

# ファボ

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
    tweet_id: "#{n+15}"
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

  HouseComment.create!(
    user_id: "21",
    house_id: "5",
    content: "ゲストハウスでのもくもく会は初めての経験でした笑"
  )
  
  HouseComment.create!(
    user_id: "18",
    house_id: "5",
    content: "ここにいくと仕事が捗る！ワーケーションにオススメ"
  )
  
  HouseComment.create!(
    user_id: "4",
    house_id: "5",
    content: "元・スタッフです！たったの１ヶ月ですが、最高のプチ移住体験でした。"
  )

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

HouseComment.create!(
  user_id: "17",
  house_id: "6",
  content: "ランナーによるランナーのための宿"
)

HouseComment.create!(
  user_id: "11",
  house_id: "6",
  content: "すごいよかった！大浴場あるのが嬉しいですね"
)

HouseComment.create!(
  user_id: "14",
  house_id: "6",
  content: "毎年、合宿地のような使い方をしていますが、最高の宿ですね"
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

HouseComment.create!(
  user_id: "7",
  house_id: "7",
  content: "札幌はここ一択でしょ！"
)

HouseComment.create!(
  user_id: "19",
  house_id: "7",
  content: "実家に帰ってきたみたいに落ち着ける"
)

HouseComment.create!(
  user_id: "3",
  house_id: "7",
  content: "心地良すぎていっつも延泊してしまう宿"
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

HouseComment.create!(
  user_id: "4",
  house_id: "8",
  content: "ラーメン観が変わる、全人類絶対に１回は食べるべき"
)

HouseComment.create!(
  user_id: "21",
  house_id: "8",
  content: "衝撃の一杯"
)

HouseComment.create!(
  user_id: "6",
  house_id: "8",
  content: "かなり個性的な宿（＆オーナー笑）ですが、細かい心遣いも忘れてないのは、
  奥さんがよく気づく人だからなのかな？とっても快適でした！"
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

HouseComment.create!(
  user_id: "5",
  house_id: "9",
  content: "実家より落ち着く宿としてギネスに載せたい"
)

HouseComment.create!(
  user_id: "15",
  house_id: "9",
  content: "ついつい行ってしまうクセになる宿です"
)

HouseComment.create!(
  user_id: "8",
  house_id: "9",
  content: "かなり個性的な宿（＆オーナー笑）ですが、細かい心遣いも忘れてないのは、
  奥さんがよく気づく人だからなのかな？とっても快適でした！"
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

HouseComment.create!(
  user_id: "4",
  house_id: "10",
  content: "まさに知る人ぞ知る、って感じの宿。いい時間を過ごせました"
)

HouseComment.create!(
  user_id: "14",
  house_id: "10",
  content: "一人旅では特にオススメ、集まる人たちも只者ではない感じです"
)

HouseComment.create!(
  user_id: "18",
  house_id: "10",
  content: "ついつい行ってしまうクセになる宿です"
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

HouseComment.create!(
  user_id: "5",
  house_id: "11",
  content: "宝島はここ一択でしょ！"
)

HouseComment.create!(
  user_id: "21",
  house_id: "11",
  content: "実家に帰ってきたみたいに落ち着ける"
)

HouseComment.create!(
  user_id: "4",
  house_id: "11",
  content: "心地良すぎていっつも延泊してしまう宿"
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

HouseComment.create!(
  user_id: "4",
  house_id: "12",
  content: "僕の夏休み、って感じ！"
)

HouseComment.create!(
  user_id: "14",
  house_id: "12",
  content: "実家に帰ってきたみたいに落ち着ける"
)

HouseComment.create!(
  user_id: "13",
  house_id: "12",
  content: "心地良すぎていっつも延泊してしまう宿"
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

HouseComment.create!(
  user_id: "8",
  house_id: "13",
  content: "オーナーのこだわりが詰まっている素敵な宿です！"
)

HouseComment.create!(
  user_id: "12",
  house_id: "13",
  content: "史上最強ゲストハウス！"
)

HouseComment.create!(
  user_id: "16",
  house_id: "13",
  content: "最高でした！コスパ良すぎ！"
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

HouseComment.create!(
  user_id: "3",
  house_id: "14",
  content: "めっちゃ落ち着きます"
)

HouseComment.create!(
  user_id: "6",
  house_id: "14",
  content: "ゆったりと過ごしたい人にオススメ"
)

HouseComment.create!(
  user_id: "15",
  house_id: "14",
  content: "クセになるゆるさ"
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

HouseComment.create!(
  user_id: "5",
  house_id: "15",
  content: "めっちゃ落ち着きます"
)

HouseComment.create!(
  user_id: "8",
  house_id: "15",
  content: "ゆったりと過ごしたい人にオススメ"
)

HouseComment.create!(
  user_id: "13",
  house_id: "15",
  content: "クセになるゆるさ"
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

HouseComment.create!(
  user_id: "3",
  house_id: "16",
  content: "めっちゃ落ち着きます"
)

HouseComment.create!(
  user_id: "4",
  house_id: "16",
  content: "ゆったりと過ごしたい人にオススメ"
)

HouseComment.create!(
  user_id: "5",
  house_id: "16",
  content: "クセになるゆるさ"
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
  でも、結家に関してはその心配はないっていうか、むしろ声枯れるまで話すことになるのでそっちの心配した方がいいっす。
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
  title: '沖縄と言えばここでしょ！',
  content: "２０１９年の夏、僕は唐突に思いました、「最近、旅してなくね！？」と、
  もともと一人旅やゲストハウスは好きなのですが、、、ここ最近は友人や恋人と、っていうことが多くて近頃は泊まる機会がありませんでした。
  ただ、今年の夏はお盆が忙しくて、その直後が長期休みというなかなか他の人達とは合わせづらいスケジュール、、、
  ということで！いっちゃいました、初沖縄！！
  基本的にはかなりチキンの性格なので、情報収集は念入りに、、、どーもこの「なきじんゲストハウス結家」ってとこが良さそうだぞ、ってことでおそるおそる予約をしましたが、いやー本当にこの時の自分の選択を褒めてあげたい！
  もう最高ポイント多過ぎて紹介仕切れないんですが、特にここがってとこをこれから紹介していきますね！
  
  １・宿に集まる方々のクセが強い！（いい意味で）
  はじめてのゲストハウス、結構ドキドキしながらいったんですよ。雰囲気とかよくわからんし、本当に旅人同士仲良くなるとか、あるの？都市伝説でしょ？みたいな。
  でも、結家に関してはその心配はないっていうか、むしろ声枯れるまで話すことになるのでそっちの心配した方がいいっす。
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
  visit_date: '2019-08-20',
  story_image: open("#{Rails.root}/db/fixtures/musubiya/zakimusubiya11.jpg")
)

StoryComment.create!(
  user_id: "3",
  story_id: "2",
  content: "情景が目に浮かぶような素晴らしいストーリーありがとうございます！"
)

StoryComment.create!(
  user_id: "5",
  story_id: "2",
  content: "結家やっぱいいですねー！
  私が行った時は今の場所ではなくて、宿の大きさも今よりは少し小さいのかな？なんだか懐かしくなっちゃいました"
)

StoryComment.create!(
  user_id: "6",
  story_id: "2",
  content: "エモいですねえ"
)

10.times do |n|
  StoryBookmark.create!(
    user_id: "#{n+5}",
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
  title: '最高のロケーションで過ごすウチナータイム',
  content: "
  結家から帰ってきた人の幸福度が高すぎる。その謎をあきらかにすべく我々は今帰仁の奥地へと向かった。

  言葉では語り尽くせないほどの魅力が探検隊を襲った。

  ということで、なきじんゲストハウス結家へのストーリーを書こうかと思ったけど無理でした、良すぎて！
  とにかく言って！って感じです笑
  ",
  visit_date: '2018-12-12',
  story_image: open("#{Rails.root}/db/fixtures/musubiya/zakimusubiya05.jpg")
)

StoryComment.create!(
  user_id: "6",
  story_id: "3",
  content: "なにも説明してないけど気持ちはわかります笑"
)

StoryComment.create!(
  user_id: "7",
  story_id: "3",
  content: "ちょ！語彙力！笑
  またお待ちしてまーす"
)

10.times do |n|
  StoryBookmark.create!(
    user_id: "#{n+6}",
    story_id: "3"
  )
end

StoryBookmark.create!(
  user_id: "3",
  story_id: "3"
)

# 4
Story.create!(
  user_id: '6',
  house_id: '2',
  title: "ゲストハウスを超えたサービスが良すぎる素敵な宿",
  content: "友人から教えてもらったヤーグナの空、めっちゃよかったので紹介仕切れませんが、特にオススメポイントを紹介します！

  １.ダイニングバー併設

  宿にはダイニングバーが併設しているのですが、これが本当にオススメなんです！ゲストハウス併設としては、とかそういうレベルではなく一つの飲食店としてめちゃくちゃレベルが高いです！
  しかもお値段もリーズナブル。地元の人も普通にレストランとして利用しにくるぐらいなんですよー！

  ２.スタッフさんが素敵

  宿は夫婦で運営されていて、ダイニングバーの方は旦那さんのお兄様が運営されていて、皆様ステキな方で本当に人間的な魅力に溢れています。
  ヤーグナの空をオープンするまでのエピソードとかめちゃくちゃ面白いんで、ぜひ、実際にヤーグナの空に行ってご本人たちからお話しを聞いて頂きたいなーと思います！

  
  ３.看板犬のコップとノコが可愛い

  多分、世界一、人懐っこいワンちゃんたちです笑

  いかがでしょうか？ぜひ、一度行ってみてください！
  ",
  visit_date: '2019-08-10',
  story_image: open("#{Rails.root}/db/fixtures/yagu/yagukana2.jpg")
)

StoryComment.create!(
  user_id: "21",
  story_id: "4",
  content: "ヤーグナの空、料理そんなに美味しいんですね！今度沖縄いくときは絶対にいこ！"
)


10.times do |n|
StoryBookmark.create!(
  user_id: "#{n+7}",
  story_id: "4"
)
end

# 5
Story.create!(
  user_id: '7',
  house_id: '3',
  title: "歴史を感じる素敵な旅人宿",
  content: "江戸〜明治にかけての街並みが現在も残る東海道五十三次の宿場町『関宿』にあるこ古民家ゲストハウス、石垣屋さんにお邪魔してきましたーー！

  すごく味のある建物で、本当にタイムスリップをした気分になれますし、お庭もとてもよく手入れされていて、美しい苔を眺めてボーッとしているだけでなんだか幸せな気分になれます。
  オーナーさんのお子さんたちもとっても元気で、賑やかで、旅というよりもなんだか帰省しに遊びにいった気分になれるような、そんな宿でした。

  ハマりすぎて日本１周を途中でやめてスタッフになった人とかもいるみたいで、、、？中毒には注意する必要があるかもしれませんね笑
  ",
  visit_date: '2019-06-10',
  story_image: open("#{Rails.root}/db/fixtures/ishigakiya/ishigakiyakana6.jpg")
)

StoryComment.create!(
  user_id: "5",
  story_id: "5",
  content: "「ハマりすぎて日本１周を途中でやめてスタッフになった人」どうみても僕のことですね笑
  ご紹介ありがとうございます笑"
)


10.times do |n|
StoryBookmark.create!(
  user_id: "#{n+8}",
  story_id: "5"
)
end

# 6
Story.create!(
  user_id: '8',
  house_id: '4',
  title: "ホテルを改装した秩父の巨大素敵空間",
  content: "ツーリング旅で利用しましたが、最高でした。
  もともと古くからあったホテルの別館を改装してゲストハウスにしたそうで、建物としてとても大きく、何より共同リビングがめちゃくちゃ広いです。
  女将のらぶこさんが作る朝ごはんも絶品で、地元の食材を中心としたメニューになっているのも旅人にとっては嬉しいポイントではないでしょうか？
  秩父の中心街からは少し離れていますが、車やオートバイがあれば特に気にならない距離なんじゃないかなと思います。結構ご飯屋さんもあったりして中心街に泊まるよりもディープな秩父が堪能できるかも？
  有名な三峰神社にはすぐに行けますし、近くにはロッククライミングの名所もあるそうなのでクライミングや山登りを楽しむアウトドア好きの方にも愛される宿のようです。
  そして何より、看板犬のあんこが可愛い。とても癒される素敵なお宿ですよー！
  ",
  visit_date: '2019-06-10',
  story_image: open("#{Rails.root}/db/fixtures/ogagesu/daioganogh.jpg")
)

StoryComment.create!(
  user_id: "11",
  story_id: "6",
  content: "ロッククライミングで有名なのはおそらく二子山ですね、とてもいいポイントなんですよー"
)


10.times do |n|
StoryBookmark.create!(
  user_id: "#{n+8}",
  story_id: "6"
)
end

# 7
Story.create!(
  user_id: '9',
  house_id: '5',
  title: "Railsゲストハウス最高でした！！",
  content: "エンジニア仲間との旅で利用しました。
  ゲストハウスというと、安宿みたいなイメージもあったりもするんですが、ここは掃除も行き届いていて、設備も充実してて、この値段でこの快適さはちょっとそこらのホテルや旅館では考えられないくらいコスパがいいです。
  事前に予約すれば朝ごはんも食べられるのですが、地元の旬の食材を使った優しい味つけになっており、最高の１日のスタートを切ることができますね！
  宿の周りも自然豊かで都会暮らしの自分としては、最高のリフレッシュになったように思えます。近くにはちょっとしたトレイルランニングコースも用意されているらしく、自分が泊まった時も何人かランナーの方がいらっしゃいましたね。

  有名な観光地があるわけではありませんが、アウトドアアクティビティも充実しているようなので次はチャレンジしたいなと思います。
  そして何より、スタッフの皆様の笑顔が素敵。集まる旅人さんたちも魅力的な方々が多くて、絶対に再訪したいと思える素敵なゲストハウスでした！
  ",
  visit_date: '2019-05-10',
)

StoryComment.create!(
  user_id: "15",
  story_id: "7",
  content: "詳細なストーリーありがとうございます！Railsゲストハウス興味あったので大変参考になりました！"
)

StoryComment.create!(
  user_id: "18",
  story_id: "7",
  content: "朝ごはんもあるんですね！"
)


StoryBookmark.create!(
  user_id: "8",
  story_id: "7"
)

# 8
Story.create!(
  user_id: '10',
  house_id: '6',
  title: "マラソンゲストハウス最高でした！！",
  content: "マラソン仲間との旅で利用しました。
  ゲストハウスというと、安宿みたいなイメージもあったりもするんですが、ここは掃除も行き届いていて、設備も充実してて、この値段でこの快適さはちょっとそこらのホテルや旅館では考えられないくらいコスパがいいです。
  事前に予約すれば朝ごはんも食べられるのですが、地元の旬の食材を使った優しい味つけになっており、最高の１日のスタートを切ることができますね！
  宿の周りも自然豊かで都会暮らしの自分としては、最高のリフレッシュになったように思えます。近くにはちょっとしたトレイルランニングコースも用意されているらしく、自分が泊まった時も何人かランナーの方がいらっしゃいましたね。

  有名な観光地があるわけではありませんが、アウトドアアクティビティも充実しているようなので次はチャレンジしたいなと思います。
  そして何より、スタッフの皆様の笑顔が素敵。集まる旅人さんたちも魅力的な方々が多くて、絶対に再訪したいと思える素敵なゲストハウスでした！
  ",
  visit_date: '2019-05-10',
)

StoryComment.create!(
  user_id: "11",
  story_id: "8",
  content: "詳細なストーリーありがとうございます！マラソンゲストハウス興味あったので大変参考になりました！"
)

StoryComment.create!(
  user_id: "12",
  story_id: "8",
  content: "朝ごはんもあるんですね！"
)


StoryBookmark.create!(
  user_id: "13",
  story_id: "8"
)

# 9
Story.create!(
  user_id: '11',
  house_id: '7',
  title: "北海道はでっかい堂、最高でした！！",
  content: "一人旅で利用しました。
  ゲストハウスというと、安宿みたいなイメージもあったりもするんですが、ここは掃除も行き届いていて、設備も充実してて、この値段でこの快適さはちょっとそこらのホテルや旅館では考えられないくらいコスパがいいです。
  オーナーさんのキャラも濃くて、毎日楽しく過ごせました！
  宿の周りの飲食店も魅力的なところが多く、オーナーさんの顔の広さ故か、北海道はでっかい堂の宿泊者だと知るとサービスをしてくれるところも多かったです。

  スタッフの皆様の笑顔が素敵。集まる旅人さんたちも魅力的な方々が多くて、絶対に再訪したいと思える素敵なゲストハウスでした！
  一人旅には特にオススメですー！
  ",
  visit_date: '2019-05-10',
)

StoryComment.create!(
  user_id: "6",
  story_id: "9",
  content: "詳細なストーリーありがとうございます！興味あったので大変参考になりました！"
)

StoryComment.create!(
  user_id: "16",
  story_id: "9",
  content: "オーナーさんの顔の広さすごいですね！"
)


StoryBookmark.create!(
  user_id: "19",
  story_id: "9"
)

# 10
Story.create!(
  user_id: '11',
  house_id: '8',
  title: "RAMEN HOUSE最高でした！！",
  content: "ラーメン仲間との旅で利用しました。
  ゲストハウスというと、安宿みたいなイメージもあったりもするんですが、ここは掃除も行き届いていて、設備も充実してて、この値段でこの快適さはちょっとそこらのホテルや旅館では考えられないくらいコスパがいいです。
  事前に予約すればラーメンも食べられるのですが、地元の旬の食材を使った独特の味つけになっており、今までのラーメンの常識をいい意味でぶっ壊してくれますね！
  宿の周りも自然豊かで都会暮らしの自分としては、最高のリフレッシュになったように思えます。近くにはちょっとしたトレイルランニングコースも用意されているらしく、自分が泊まった時も何人かランナーの方がいらっしゃいましたね。

  有名な観光地があるわけではありませんが、アウトドアアクティビティも充実しているようなので次はチャレンジしたいなと思います。
  そして何より、スタッフの皆様の笑顔が素敵。集まる旅人さんたちも魅力的な方々が多くて、絶対に再訪したいと思える素敵なゲストハウスでした！
  ",
  visit_date: '2019-04-26',
)

StoryComment.create!(
  user_id: "21",
  story_id: "10",
  content: "詳細なストーリーありがとうございます！RAMEN HOUSE興味あったので大変参考になりました！"
)

StoryComment.create!(
  user_id: "20",
  story_id: "10",
  content: "朝ごはんもあるんですね！"
)


StoryBookmark.create!(
  user_id: "19",
  story_id: "10"
)

# 11
Story.create!(
  user_id: '12',
  house_id: '9',
  title: "ゲストハウスまごのて最高でした！！",
  content: "一人旅で利用しました。
  ゲストハウスというと、安宿みたいなイメージもあったりもするんですが、ここは掃除も行き届いていて、設備も充実してて、この値段でこの快適さはちょっとそこらのホテルや旅館では考えられないくらいコスパがいいです。
  事前に予約すれば朝ごはんも食べられるのですが、地元の旬の食材を使った優しい味つけになっており、最高の１日のスタートを切ることができますね！
  宿の周りも自然豊かで都会暮らしの自分としては、最高のリフレッシュになったように思えます。近くにはちょっとしたトレイルランニングコースも用意されているらしく、自分が泊まった時も何人かランナーの方がいらっしゃいましたね。

  有名な観光地があるわけではありませんが、アウトドアアクティビティも充実しているようなので次はチャレンジしたいなと思います。
  そして何より、スタッフの皆様の笑顔が素敵。集まる旅人さんたちも魅力的な方々が多くて、絶対に再訪したいと思える素敵なゲストハウスでした！
  ",
  visit_date: '2019-03-26',
)

StoryComment.create!(
  user_id: "18",
  story_id: "11",
  content: "詳細なストーリーありがとうございます！まごのて興味あったので大変参考になりました！"
)

StoryComment.create!(
  user_id: "17",
  story_id: "11",
  content: "朝ごはんもあるんですね！"
)


StoryBookmark.create!(
  user_id: "16",
  story_id: "11"
)

# 12
Story.create!(
  user_id: '13',
  house_id: '10',
  title: "唯我独尊、最高でした！！",
  content: "一人旅で利用しました。
  ゲストハウスというと、安宿みたいなイメージもあったりもするんですが、ここは掃除も行き届いていて、設備も充実してて、この値段でこの快適さはちょっとそこらのホテルや旅館では考えられないくらいコスパがいいです。
  事前に予約すれば朝ごはんも食べられるのですが、地元の旬の食材を使った優しい味つけになっており、最高の１日のスタートを切ることができますね！
  宿の周りも自然豊かで都会暮らしの自分としては、最高のリフレッシュになったように思えます。近くにはちょっとしたトレイルランニングコースも用意されているらしく、自分が泊まった時も何人かランナーの方がいらっしゃいましたね。

  有名な観光地があるわけではありませんが、アウトドアアクティビティも充実しているようなので次はチャレンジしたいなと思います。
  そして何より、スタッフの皆様の笑顔が素敵。集まる旅人さんたちも魅力的な方々が多くて、絶対に再訪したいと思える素敵なゲストハウスでした！
  ",
  visit_date: '2019-01-26',
)

StoryComment.create!(
  user_id: "15",
  story_id: "12",
  content: "詳細なストーリーありがとうございます！興味あったので大変参考になりました！"
)

StoryComment.create!(
  user_id: "14",
  story_id: "12",
  content: "朝ごはんもあるんですね！"
)


StoryBookmark.create!(
  user_id: "12",
  story_id: "12"
)

# 13
Story.create!(
  user_id: '14',
  house_id: '11',
  title: "宝島ユースホステル、最高でした！！",
  content: "一人旅で利用しました。
  ゲストハウスというと、安宿みたいなイメージもあったりもするんですが、ここは掃除も行き届いていて、設備も充実してて、この値段でこの快適さはちょっとそこらのホテルや旅館では考えられないくらいコスパがいいです。
  事前に予約すれば朝ごはんも食べられるのですが、地元の旬の食材を使った優しい味つけになっており、最高の１日のスタートを切ることができますね！
  宿の周りも自然豊かで都会暮らしの自分としては、最高のリフレッシュになったように思えます。近くにはちょっとしたトレイルランニングコースも用意されているらしく、自分が泊まった時も何人かランナーの方がいらっしゃいましたね。

  有名な観光地があるわけではありませんが、アウトドアアクティビティも充実しているようなので次はチャレンジしたいなと思います。
  そして何より、スタッフの皆様の笑顔が素敵。集まる旅人さんたちも魅力的な方々が多くて、絶対に再訪したいと思える素敵なゲストハウスでした！
  ",
  visit_date: '2019-01-26',
)

StoryComment.create!(
  user_id: "13",
  story_id: "13",
  content: "詳細なストーリーありがとうございます！宝島ユース興味あったので大変参考になりました！"
)

StoryComment.create!(
  user_id: "11",
  story_id: "13",
  content: "朝ごはんもあるんですね！"
)


StoryBookmark.create!(
  user_id: "9",
  story_id: "13"
)

# 14
Story.create!(
  user_id: '15',
  house_id: '12',
  title: "白浜ゲストハウスはまはまが最高だった話",
  content: "一人旅で利用しました。
  ゲストハウスというと、安宿みたいなイメージもあったりもするんですが、ここは掃除も行き届いていて、設備も充実してて、この値段でこの快適さはちょっとそこらのホテルや旅館では考えられないくらいコスパがいいです。
  事前に予約すれば朝ごはんも食べられるのですが、地元の旬の食材を使った優しい味つけになっており、最高の１日のスタートを切ることができますね！
  宿の周りも自然豊かで都会暮らしの自分としては、最高のリフレッシュになったように思えます。近くにはちょっとしたトレイルランニングコースも用意されているらしく、自分が泊まった時も何人かランナーの方がいらっしゃいましたね。

  有名な観光地があるわけではありませんが、アウトドアアクティビティも充実しているようなので次はチャレンジしたいなと思います。
  そして何より、スタッフの皆様の笑顔が素敵。集まる旅人さんたちも魅力的な方々が多くて、絶対に再訪したいと思える素敵なゲストハウスでした！
  ",
  visit_date: '2018-11-26',
)

StoryComment.create!(
  user_id: "7",
  story_id: "14",
  content: "詳細なストーリーありがとうございます！はまはま興味あったので大変参考になりました！"
)

StoryComment.create!(
  user_id: "5",
  story_id: "14",
  content: "朝ごはんもあるんですね！"
)


StoryBookmark.create!(
  user_id: "3",
  story_id: "14"
)

# 15
Story.create!(
  user_id: '16',
  house_id: '13',
  title: "バックパッカーズrepoをレポート！",
  content: "一人旅で利用しました。
  ゲストハウスというと、安宿みたいなイメージもあったりもするんですが、ここは掃除も行き届いていて、設備も充実してて、この値段でこの快適さはちょっとそこらのホテルや旅館では考えられないくらいコスパがいいです。
  事前に予約すれば朝ごはんも食べられるのですが、地元の旬の食材を使った優しい味つけになっており、最高の１日のスタートを切ることができますね！
  宿の周りも自然豊かで都会暮らしの自分としては、最高のリフレッシュになったように思えます。近くにはちょっとしたトレイルランニングコースも用意されているらしく、自分が泊まった時も何人かランナーの方がいらっしゃいましたね。

  有名な観光地があるわけではありませんが、アウトドアアクティビティも充実しているようなので次はチャレンジしたいなと思います。
  そして何より、スタッフの皆様の笑顔が素敵。集まる旅人さんたちも魅力的な方々が多くて、絶対に再訪したいと思える素敵なゲストハウスでした！
  ",
  visit_date: '2018-10-26',
)

StoryComment.create!(
  user_id: "4",
  story_id: "15",
  content: "詳細なストーリーありがとうございます！repo興味あったので大変参考になりました！"
)

StoryComment.create!(
  user_id: "6",
  story_id: "15",
  content: "朝ごはんもあるんですね！"
)

StoryComment.create!(
  user_id: "10",
  story_id: "15",
  content: "タイトルは親父ギャグですか？"
)


StoryBookmark.create!(
  user_id: "8",
  story_id: "15"
)

# 16
Story.create!(
  user_id: '17',
  house_id: '14',
  title: "本当に「ばあちゃん家」",
  content: "一人旅で利用しました。
  ゲストハウスというと、安宿みたいなイメージもあったりもするんですが、ここは掃除も行き届いていて、設備も充実してて、この値段でこの快適さはちょっとそこらのホテルや旅館では考えられないくらいコスパがいいです。
  事前に予約すれば朝ごはんも食べられるのですが、地元の旬の食材を使った優しい味つけになっており、最高の１日のスタートを切ることができますね！
  宿の周りも自然豊かで都会暮らしの自分としては、最高のリフレッシュになったように思えます。近くにはちょっとしたトレイルランニングコースも用意されているらしく、自分が泊まった時も何人かランナーの方がいらっしゃいましたね。

  有名な観光地があるわけではありませんが、アウトドアアクティビティも充実しているようなので次はチャレンジしたいなと思います。
  そして何より、スタッフの皆様の笑顔が素敵。集まる旅人さんたちも魅力的な方々が多くて、絶対に再訪したいと思える素敵なゲストハウスでした！
  ",
  visit_date: '2018-06-15',
)

StoryComment.create!(
  user_id: "5",
  story_id: "16",
  content: "詳細なストーリーありがとうございます！大変参考になりました！"
)

StoryComment.create!(
  user_id: "7",
  story_id: "16",
  content: "朝ごはんもあるんですね！"
)


StoryBookmark.create!(
  user_id: "11",
  story_id: "16"
)

# 17
Story.create!(
  user_id: '18',
  house_id: '15',
  title: "長崎県のハウスNにいってきました！",
  content: "一人旅で利用しました。
  ゲストハウスというと、安宿みたいなイメージもあったりもするんですが、ここは掃除も行き届いていて、設備も充実してて、この値段でこの快適さはちょっとそこらのホテルや旅館では考えられないくらいコスパがいいです。
  事前に予約すれば朝ごはんも食べられるのですが、地元の旬の食材を使った優しい味つけになっており、最高の１日のスタートを切ることができますね！
  宿の周りも自然豊かで都会暮らしの自分としては、最高のリフレッシュになったように思えます。近くにはちょっとしたトレイルランニングコースも用意されているらしく、自分が泊まった時も何人かランナーの方がいらっしゃいましたね。

  有名な観光地があるわけではありませんが、アウトドアアクティビティも充実しているようなので次はチャレンジしたいなと思います。
  そして何より、スタッフの皆様の笑顔が素敵。集まる旅人さんたちも魅力的な方々が多くて、絶対に再訪したいと思える素敵なゲストハウスでした！
  ",
  visit_date: '2018-06-15',
)

StoryComment.create!(
  user_id: "6",
  story_id: "17",
  content: "詳細なストーリーありがとうございます！大変参考になりました！"
)

StoryComment.create!(
  user_id: "8",
  story_id: "17",
  content: "朝ごはんもあるんですね！"
)

StoryBookmark.create!(
  user_id: "12",
  story_id: "17"
)

# 18
Story.create!(
  user_id: '19',
  house_id: '16',
  title: "鶴時間にいってきたので訪問メモ",
  content: "一人旅で利用しました。
  ゲストハウスというと、安宿みたいなイメージもあったりもするんですが、ここは掃除も行き届いていて、設備も充実してて、この値段でこの快適さはちょっとそこらのホテルや旅館では考えられないくらいコスパがいいです。
  事前に予約すれば朝ごはんも食べられるのですが、地元の旬の食材を使った優しい味つけになっており、最高の１日のスタートを切ることができますね！
  宿の周りも自然豊かで都会暮らしの自分としては、最高のリフレッシュになったように思えます。近くにはちょっとしたトレイルランニングコースも用意されているらしく、自分が泊まった時も何人かランナーの方がいらっしゃいましたね。

  有名な観光地があるわけではありませんが、アウトドアアクティビティも充実しているようなので次はチャレンジしたいなと思います。
  そして何より、スタッフの皆様の笑顔が素敵。集まる旅人さんたちも魅力的な方々が多くて、絶対に再訪したいと思える素敵なゲストハウスでした！
  ",
  visit_date: '2018-05-20',
)

StoryComment.create!(
  user_id: "7",
  story_id: "18",
  content: "詳細なストーリーありがとうございます！大変参考になりました！"
)

StoryComment.create!(
  user_id: "9",
  story_id: "18",
  content: "朝ごはんもあるんですね！"
)

StoryBookmark.create!(
  user_id: "18",
  story_id: "18"
)